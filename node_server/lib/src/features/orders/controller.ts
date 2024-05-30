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
  const waiterId = tryParseInt(req.params.waiterId)
  const startDate = tryParseDate(req.params.startDate)
  const endDate = tryParseDate(req.params.endDate)
  const state = req.params.state 
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
  const waiterId = tryParseInt(req.body.waiterId)
  const items: CreateOrderItem[] = []

  for (const item of req.body.items) {
    items.push({
      comment: item.comment,
      dishId: tryParseInt(item.dishId)!,
      count: tryParseInt(item.count)!
    })
  }

  ordersService.addOrder({ waiterId: waiterId!, items })
}

export async function deleteOrder(
  req: Request, 
  res: Response, 
  next: NextFunction
) {
  
}