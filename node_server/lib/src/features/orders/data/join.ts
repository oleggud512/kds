import { Connection, RowDataPacket } from "mysql2/promise"
import { IDish, IOrder, IOrderItem, IWaiter, sequelize } from "../../../../sequelize"
import OrderState from "../OrderState"
import OrderItemState from "../OrderItemState"
import { tryParseInt } from "../../../common/tryParseInt"
import { tryParseFloat } from "../../../common/tryParseFloat"
import Db from "../../../../mysql"


export async function orderQuery(args?: {
  orderId?: number,
  waiterId?: number,
  startDate?: Date,
  endDate?: Date,
  state?: OrderState,
  withWaiter?: boolean,
  withOrderItems?: boolean,
  withDishes?: boolean
}) : Promise<IOrder[]> {
  const conn = Db.conn

  let qargs: any[] = []
  let select = `o.id AS o_id, 
    o.waiter_id as o_waiter_id, 
    o.date AS o_date, 
    o.state AS o_state, 
    o.total AS o_total`
  let q = "FROM `order` o"

  if (args?.withOrderItems) {
    select += `, 
      oi.order_id AS oi_order_id, 
      oi.dish_id AS oi_dish_id, 
      oi.state AS oi_state, 
      oi.comment AS oi_comment,
      oi.count AS oi_count, 
      oi.price AS oi_price`
    q += " LEFT JOIN order_item oi ON oi.order_id = o.id"
  }

  if (args?.withDishes) {
    select += `, 
      d.id AS d_id, 
      d.name AS d_name, 
      d.category AS d_category, 
      d.price AS d_price`
    q += " LEFT JOIN dish d ON oi.dish_id = d.id"
  }

  if (args?.withWaiter) {
    select += `, 
      w.id AS w_id,
      w.name AS w_name,
      w.phone_number AS w_phone_number`
    q += " LEFT JOIN waiter w ON o.waiter_id = w.id"
  }

  q += " WHERE 42 = 42"

  if (args?.orderId) {
    qargs.push(args!.orderId!)
    q += " AND o.id = ?"
  }

  if (args?.waiterId) {
    qargs.push(args!.waiterId!)
    q += " AND o.waiter_id = ?"
  }

  if (args?.startDate && !args?.endDate) {
    qargs.push(args!.startDate!)
    q += " AND DAY(o.date) = DAY(DATE(?))"
  }
  else if (args?.startDate && args?.endDate) {
    qargs.push(args!.startDate!, args!.endDate!)
    q += " AND o.date BETWEEN DATE(?) AND DATE(?)"
  }

  if (args?.state) {
    qargs.push(args!.state!)
    q += " AND o.state = ?"
  }

  const [res, fields] = await conn.query<RowDataPacket[]>(`SELECT ${select} ${q}`, qargs)
  const orders: IOrder[] = []

  for (const row of res) {
    let order = orders.find(o => o.id == row.o_id)

    if (!order) {
      order = {
        id: row.o_id,
        total: parseFloat(row.o_total),
        waiterId: row.o_waiter_id,
        date: row.o_date,
        state: OrderState[row.o_state as keyof typeof OrderState],
        waiter: args?.withWaiter 
          ? {
            id: row.w_id,
            name: row.w_name,
            phoneNumber: row.w_phone_number
          }
          : undefined
      }
      orders.push(order)
    }

    if (args?.withOrderItems) {
      let items = order.items

      if (!items) {
        order.items = []
        items = order.items
      }
      
      const item: IOrderItem = {
        dishId: row.oi_dish_id,
        orderId: row.oi_order_id,
        comment: row.oi_comment,
        price: parseFloat(row.oi_price),
        state: OrderItemState[row.oi_state as keyof typeof OrderItemState],
        count: row.oi_count
      }

      if (args?.withDishes) {
        const dish: IDish = {
          id: row.d_id,
          name: row.d_name,
          category: row.d_category,
          price: parseFloat(row.d_price)
        }
        item.dish = dish
      }

      if (!items.find(i => i.dishId == item.dishId)) {
        items.push(item)
      }
    }
    
  }

  // console.log(JSON.stringify(orders, null, "    "))

  return orders
}


export async function orderItemQuery(args?: {
  state?: OrderItemState,
  orderId?: number,
  dishId?: number,
  withOrder?: boolean,
  withWaiter?: boolean
}) : Promise<IOrderItem[]> {
  const conn = Db.conn

  let qargs: any[] = []
  let select = `
    oi.order_id AS oi_order_id,
    oi.dish_id AS oi_dish_id,
    oi.comment AS oi_comment,
    oi.state AS oi_state,
    oi.count AS oi_count,
    oi.price AS oi_price`
  let q = "FROM order_item oi"

  select += `,
    d.id AS d_id, 
    d.name AS d_name, 
    d.category AS d_category, 
    d.price AS d_price`
  q += " LEFT JOIN dish d ON d.id = oi.dish_id"

  if (args?.withOrder) {
    select += `,
      o.id AS o_id, 
      o.waiter_id as o_waiter_id, 
      o.date AS o_date, 
      o.state AS o_state, 
      o.total AS o_total`
    q += " JOIN `order` o ON o.id = oi.order_id"
  }

  if (args?.withWaiter) {
    select += `, 
      w.id AS w_id,
      w.name AS w_name,
      w.phone_number AS w_phone_number`
    q += " JOIN waiter w ON o.waiter_id = w.id"
  }
      
  q += " WHERE 42 = 42"

  if (args?.state) {
    qargs.push(OrderItemState[args!.state!])
    q += " AND oi.state = ?"
  }

  if (args?.orderId) {
    qargs.push(args!.orderId!)
    q += " AND oi.order_id = ?"
  }

  if (args?.dishId) {
    qargs.push(args!.dishId!)
    q += " AND oi.dish_id = ?"
  }

  const [res, fields] = await conn.query<RowDataPacket[]>(`SELECT ${select} ${q}`, qargs)

  const orderItems: IOrderItem[] = []

  for (const row of res) {
    let orderItem = orderItems.find(oi => 
      oi.orderId == row.oi_order_id && 
      oi.dishId == row.oi_dish_id)
    
    if (!orderItem) {
      orderItem = {
        dishId: row.oi_dish_id,
        orderId: row.oi_order_id,
        comment: row.oi_comment,
        price: row.oi_price,
        state: row.oi_state,
        count: row.oi_count,
        dish: {
          id: row.d_id,
          name: row.d_name,
          category: row.d_category,
          price: parseFloat(row.d_price)          
        }
      }
      orderItems.push(orderItem)
    }

    if (args?.withOrder) {
      orderItem.order = {
        id: row.o_id,
        total: parseFloat(row.o_total),
        waiterId: row.o_waiter_id,
        date: row.o_date,
        state: OrderState[row.o_state as keyof typeof OrderState],
        waiter: args?.withWaiter 
          ? {
            id: row.w_id,
            name: row.w_name,
            phoneNumber: row.w_phone_number
          }
          : undefined
      }
    }
  }

  return orderItems
}