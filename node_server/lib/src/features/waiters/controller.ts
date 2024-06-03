import { Request, Response, NextFunction } from 'express'
import * as waitersSrevice from "./service"
import { tryParseInt } from '../../common/tryParseInt'

export async function getWaiters(
  req: Request, 
  res: Response, 
  next: NextFunction
) {
  const waiters = await waitersSrevice.getWaiters()
  return res.json({ data: waiters })
}

export async function getWaiter(
  req: Request, 
  res: Response, 
  next: NextFunction
) {
  const waiter = await waitersSrevice.getWaiter(tryParseInt(req.params.id)!)
  return res.json({ data: waiter })
}