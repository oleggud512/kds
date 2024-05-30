import { OrderItem } from "sequelize"
import { Namespace, Server, Socket } from "socket.io"
import * as orderRepository from "./data/repository"
import OrderState from "./OrderState"
import { IOrder } from "../../../sequelize"
import { tryParseInt } from "../../common/tryParseInt"

let orderItems: Namespace
let orders: Namespace

export function setupOrderSockets(io: Server) {
  orderItems = io.of("/cooking-items")
  orders = io.of("/waiter-orders")

  orderItems.on("connection", (socket: Socket) => {
    socket.on("subscribe-cooking-items", () => {
      console.log("joined the fucking room")
      socket.join("cooking-items-room")
      sendCookingOrderItems()
    })

    socket.on("unsubscribe-cooking-items", () => {
      socket.leave("cooking-items-room")
    })
  })

  orders.on("connection", (socket: Socket) => {
    socket.on("subscribe-waiter-orders", () => {
      if (orders.adapter.rooms.has(socket.handshake.auth.waiterId) && 
          orders.adapter.rooms.get(socket.handshake.auth.waiterId)!.has(socket.id)) return;
      socket.join(socket.handshake.auth.waiterId)
    })

    socket.on("unsubscribe-waiter-orders", () => {
      socket.leave(socket.handshake.auth.waiterId)
    })
  })
}

/**
 * отправляет обновленные списки поварам и каждому из активных официантов
 */
export async function onInProgressOrdersUpdated() : Promise<void> {

  sendCookingOrderItems()

  for (const waiterId in orders.adapter.rooms) {
    orderRepository.getOrders({
      waiterId: tryParseInt(waiterId),
      state: OrderState.inProgress
    }).then(ords => {
      orders
        .to(waiterId)
        .emit("waiter-orders", ords)
    })
  }
}

export async function sendCookingOrderItems() : Promise<void> {
  const items = await orderRepository.getCookingOrderItems()

  console.log(items)
  orderItems
    .to("cooking-items-room")
    .emit("cooking-items", items)
}