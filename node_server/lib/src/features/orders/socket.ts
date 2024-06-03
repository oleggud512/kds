import { OrderItem } from "sequelize"
import { Namespace, Server, Socket } from "socket.io"
import * as orderRepository from "./data/repository"
import OrderState from "./OrderState"
import { IOrder, IOrderItem } from "../../../sequelize"
import { tryParseInt } from "../../common/tryParseInt"
import OrderItemState from "./OrderItemState"

let orderItems: Namespace
let orders: Namespace

export type OrderFilters = {
  waiterId?: number,
  state?: OrderState
}

function waiterRoom(waiterId: any) {
  return `waiter-${waiterId}`
}

function notificationRoom(waiterId: any) {
  return `notification-${waiterId}`
}

export function setupOrderSockets(io: Server) {
  orderItems = io.of("/cooking-items")
  orders = io.of("/waiter-orders")

  orderItems.on("connection", (socket: Socket) => {
    socket.on("subscribe-cooking-items", () => {
      socket.join("cooking-items-room")
      sendCookingOrderItems()
    })

    socket.on("unsubscribe-cooking-items", () => {
      socket.leave("cooking-items-room")
    })
  })

  orders.on("connection", (socket: Socket) => {
    socket.on("subscribe-notifications", () => {
      const waiterId = socket.handshake.auth["waiter-id"]
      const roomName = notificationRoom(waiterId)
      socket.join(roomName)
    })
    
    socket.on("unsubscribe-notification", () => {
      const waiterId = socket.handshake.auth["waiter-id"]
      const roomName = notificationRoom(waiterId)
      socket.leave(roomName)
    })

    socket.on("subscribe-waiter-orders", (filters: OrderFilters) => {
      const waiterId = socket.handshake.auth["waiter-id"]
      const roomName = waiterRoom(waiterId)

      if (orders.adapter.rooms.has(roomName) && 
          orders.adapter.rooms.get(roomName)!.has(socket.id)) return;

      socket.data.filters = filters
      socket.join(roomName)
      sendWaiterOrders()
    })

    socket.on("update-waiter-orders-filters", (filters: OrderFilters) => {
      socket.data.filters = filters
      sendWaiterOrders()
    })

    socket.on("unsubscribe-waiter-orders", () => {
      const waiterId = socket.handshake.auth["waiter-id"]
      const roomName = waiterRoom(waiterId)
      socket.leave(roomName)
    })

    socket.on("subscribe-order", (orderId) => {
      const roomName = `order-${orderId}`
      console.log("we want to listen to an order. here is an order:")
      console.log(orderId)

      if (orders.adapter.rooms.has(roomName) && 
        orders.adapter.rooms.get(roomName)!.has(socket.id)) return;
      socket.join(roomName)
    })

    socket.on("unsubscribe-order", (orderId) => {
      const roomName = `order-${orderId}`
      socket.leave(roomName)
    })
  })
}

/**
 * отправляет обновленные списки поварам и каждому из активных официантов
 */
export async function onInProgressOrdersUpdated() : Promise<void> {
  sendCookingOrderItems()
  sendWaiterOrders()
}

export async function sendCookingOrderItems() : Promise<void> {
  const items = await orderRepository.getCookingOrderItems()

  orderItems
    .to("cooking-items-room")
    .emit("cooking-items", items)
}


export async function sendWaiterOrders() : Promise<void> {
  for (const roomName of orders.adapter.rooms.keys()) {
    const [prefix, id] = roomName.split("-")
    if (prefix == "waiter") {
      // getting the filters of the first (and only) socket in the room
      const filters: OrderFilters = 
        orders.sockets.get(orders.adapter.rooms.get(roomName)
          ?.values().next().value)!.data.filters
      orderRepository.getOrders({
        waiterId: filters.waiterId,
        state: filters.state
      }).then(ords => {
        orders
          .to(roomName)
          .emit("waiter-orders", ords)
      })

    } else if (prefix == "order") {
      orderRepository.getOrder(parseInt(id))
        .then((order) => {
          orders.emit("order", order)
        })
    }
  }
}


export async function sendDishReady(orderItem: IOrderItem) : Promise<void> {
  const waiterId = orderItem.order!.waiterId
  const roomName = notificationRoom(waiterId)

  orders
    .to(roomName)
    .emit("dish-ready-notification", orderItem)
}