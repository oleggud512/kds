import { Request, Response, NextFunction } from 'express'

export async function couldHaveWaiter(req: Request, res: Response, next: Function) {
  const waiterId = req.headers["waiter-id"]

  res.locals = {
    ...res.locals,
    waiterId: waiterId
  }
  next()
}