import { IOrder } from "../../../sequelize";
import { CreateOrder } from "./CreateOrder";
import OrderItemState from "./OrderItemState";
import * as orderRepository from "./data/repository"
import * as orderSocket from "./socket"

export async function addOrder(order: CreateOrder) : Promise<IOrder> {
  const createdOrder = await orderRepository.addOrder(order)

  orderSocket.onInProgressOrdersUpdated()

  return createdOrder
}

// export async function updateItemState(itemId: number, newState: OrderItemState) : Promise<IOrderItem> {
  
//   orderSocket.onInProgressOrdersUpdated()

// }