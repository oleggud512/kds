import { Request, Response, NextFunction } from 'express'
import { AppError } from '../../common/app-error'
import { AppErrors } from '../../shared/errors'

export async function hasWaiter(req: Request, res: Response, next: Function) {
  const waiterId = req.headers.waiterId
  
  if (!waiterId) return next(new AppError(AppErrors.noWaiterId))

  res.locals = {
    ...res.locals,
    waiterId
  }
  next()
}