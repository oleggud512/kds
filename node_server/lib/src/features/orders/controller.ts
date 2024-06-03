import { Request, Response, NextFunction } from 'express'
import * as ordersService from "./service"
import * as ordersRepository from "./data/repository"
import { tryParseInt } from '../../common/tryParseInt'
import { tryParseDate } from '../../common/tryParseDate'
import OrderState from './OrderState'
import { CreateOrder, CreateOrderItem } from './CreateOrder'


export async function getOrders(
  req: Request, 
  res: Response, 
  next: NextFunction
) {
  const waiterId = tryParseInt(
    req.query.waiterId as string | undefined ?? res.locals.waiterId)

  const startDate = tryParseDate(req.query.startDate as string | undefined)
  const endDate = tryParseDate(req.query.endDate as string | undefined)
  const state = req.query.state 
    ? OrderState[req.params.state! as keyof typeof OrderState] 
    : undefined
  
  const orders = await ordersRepository.getOrders({
    waiterId: waiterId,
    startDate,
    endDate,
    state
  })

  return res.json({ data: orders })
}

export async function addOrder(
  req: Request,
  res: Response,
  next: NextFunction
) {
  const waiterId = tryParseInt(res.locals.waiterId)
  const items: CreateOrderItem[] = []

  for (const item of req.body.items) {
    items.push({
      comment: item.comment,
      dishId: tryParseInt(item.dishId)!,
      count: tryParseInt(item.count)!
    })
  }

  const order = await ordersService.addOrder({ waiterId: waiterId!, items })
  return res.json({ data: order })
}

export async function updateOrderItemState(
  req: Request, 
  res: Response, 
  next: NextFunction
) {
  
  const orderId = tryParseInt(req.params.orderId)!
  const dishId = tryParseInt(req.params.dishId)!
  const newState = req.body.state

  await ordersService.updateOrderItemState({
    orderId,
    dishId,
    newState
  })

  return res.json({ data: 'success' })
}

export async function deleteOrder(
  req: Request, 
  res: Response, 
  next: NextFunction
) {
  
}