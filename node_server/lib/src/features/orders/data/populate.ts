import { QueryTypes } from "sequelize"
import { Dish, IOrder, IOrderItem, OrderItem, sequelize } from "../../../../sequelize"

export async function populateOrderItemsWithDishes(items: IOrderItem[]) : Promise<void> {
  const dishIds = items.map(i => i.dishId).join(", ")

  const dishes = await sequelize.query("SELECT * FROM dish WHERE id IN (:dishIds)", {
    type: QueryTypes.SELECT,
    mapToModel: true,
    model: Dish,
    replacements: {
      dishIds
    }
  })

  for (const dish of dishes) {
    const item = items.find(i => i.dishId == dish.id)!
    item.dish = dish.dataValues
  }
}

export async function populateOrdersWithItems(orders: IOrder[], opt?: { withDishes?: boolean }) : Promise<void> {
  const orderIds = orders.map(o => o.id).join(', ')

  const items = await sequelize.query(`
    SELECT * 
    FROM order_item 
    WHERE order_id IN (:orderIds)
  `, {
    replacements: {
      orderIds
    },
    type: QueryTypes.SELECT,
    mapToModel: true,
    model: OrderItem,
  })

  if (opt?.withDishes) {
    await populateOrderItemsWithDishes(items)
  }

  for (const item of items) {
    const order = orders.find(o => o.id == item.orderId)!
    const orderItems = order.items ?? []
    orderItems.push({ ...item.dataValues, dish: item.dish })
    order.items = orderItems
  }
}