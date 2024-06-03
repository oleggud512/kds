import { QueryTypes, json } from "sequelize"
import { Dish, IOrder, IOrderItem, Order, OrderItem, sequelize } from "../../../../sequelize"
import { populateOrderItemsWithDishes, populateOrdersWithItems, populateOrdersWithWaiters } from "./../data/populate"
import OrderState from "../OrderState"
import "./../../../common/ext-date"
import OrderItemState from "../OrderItemState"
import { orderItemQuery, orderQuery } from "./join"
import Db from "../../../../mysql"
import { ResultSetHeader } from "mysql2"


export async function getOrder(id: number) : Promise<IOrder> {
  const res = await orderQuery({
    orderId: id,
    withWaiter: true,
    withOrderItems: true,
    withDishes: true
  })
  return res[0]
}


export async function getOrders(args?: {
  waiterId?: number,
  startDate?: Date,
  endDate?: Date,
  state?: OrderState
}): Promise<IOrder[]> {
  return orderQuery({
    ...args,
    withWaiter: true,
    withOrderItems: true,
    withDishes: true
  })
}


export async function getOrderItem(
  orderId: number, 
  dishId: number
) : Promise<IOrderItem> {
  const items = await orderItemQuery({
    orderId: orderId,
    dishId: dishId,
    withOrder: true,
    withWaiter: true
  })
  return items[0]
}


export async function getCookingOrderItems() : Promise<IOrderItem[]> {
  return orderItemQuery({
    state: OrderItemState.cooking,
    withOrder: true,
    withWaiter: true,
  })
}


export async function addOrder(args: {
  waiterId: number,
  items: ({
    comment?: string,
    dishId: number,
    count: number
  })[]
}) : Promise<IOrder> {
  const [res, _] = await Db.conn.execute<ResultSetHeader>(
    "INSERT INTO `order`(waiter_id) VALUES (?)", [args.waiterId]
  )

  const orderId = res.insertId

  for (const item of args.items) {
    await Db.conn.execute<ResultSetHeader>(
      "INSERT INTO order_item(order_id, dish_id, count, comment) VALUES (?, ?, ?, ?)",
      [orderId, item.dishId, item.count, item.comment ?? ""]
    )
  }

  return getOrder(orderId)
}

export async function updateOrderItemState(args: {
  orderId: number,
  dishId: number,
  newState: OrderItemState
}) : Promise<IOrderItem> {
  const res = await Db.conn.query(
    "CALL update_order_item_state(?, ?, ?)", 
    [args.orderId, args.dishId, args.newState]
  )

  return getOrderItem(args.orderId, args.dishId)
}