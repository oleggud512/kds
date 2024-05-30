import { Request, Response, NextFunction } from 'express'
import * as waitersSrevice from "./service"

export async function getWaiters(
  req: Request, 
  res: Response, 
  next: NextFunction
) {
  const waiters = await waitersSrevice.getWaiters()
  return res.json({ data: waiters })
}