import { QueryTypes } from "sequelize"
import { Dish, IOrder, IOrderItem, Order, OrderItem, sequelize } from "../../../../sequelize"
import { populateOrderItemsWithDishes, populateOrdersWithItems } from "./../data/populate"
import OrderState from "../OrderState"

export async function getOrders(args?: {
  waiterId?: number,
  startDate?: Date,
  endDate?: Date,
  state?: OrderState
}): Promise<IOrder[]> {
  let q = `
    SELECT * 
    FROM \`order\` AS o
  `
  q += args?.waiterId 
    ? " WHERE o.waiter_id = :waiterId"
    : " WHERE 42 = 42"
  
  if (args?.startDate && !args?.endDate) {
    q += " AND DAY(o.date) = DAY(DATE(:startDate))"
  }
  else if (args?.startDate && args?.endDate) {
    q += " AND o.date BETWEEN DATE(:startDate) AND DATE(:endDate)"
  }
  if (args?.state) {
    q += " AND o.state = :state"
  }

    
  const orders = await sequelize.query(q, {
    type: QueryTypes.SELECT,
    mapToModel: true,
    model: Order,
    replacements: {
      waiterId: args?.waiterId,
      startDate: args?.startDate,
      endDate: args?.endDate,
      state: args?.state
    }
  })

  await populateOrdersWithItems(orders, { withDishes: true })
  
  return orders.map(o => ({ ...o.dataValues, items: o.items }))
}


export async function getCookingOrderItems() : Promise<IOrderItem[]> {
  const items = await sequelize.query("SELECT * FROM order_item WHERE state = \"cooking\"", {
    type: QueryTypes.SELECT,
    mapToModel: true,
    model: OrderItem
  })

  await populateOrderItemsWithDishes(items)

  return items.map(i => ({ ...i.dataValues, dish: i.dish }))
}


export async function getOrder(id: number) : Promise<IOrder> {
  const orders = await sequelize.query("SELECT * FROM `order` WHERE id = :id", {
    replacements: {
      id
    },
    type: QueryTypes.SELECT,
    mapToModel: true,
    model: Order
  })

  const order = orders[0]

  await populateOrdersWithItems([order], { withDishes: true })

  return { ...order.dataValues, items: order.items }
}


export async function addOrder(args: {
  waiterId: number,
  items: ({
    comment?: string,
    dishId: number,
    count: number
  })[]
}) : Promise<IOrder> {
  const order = await Order.create({
    waiterId: args.waiterId
  })
  for (const item of args.items) {
    await OrderItem.create({
      ...item,
      orderId: order.id
    })
  }

  return getOrder(order.id)
}