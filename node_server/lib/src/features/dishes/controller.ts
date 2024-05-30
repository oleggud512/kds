import { Request, Response, NextFunction } from 'express'
import * as dishesService from "./service"

export async function getDishes(
  req: Request, 
  res: Response, 
  next: NextFunction
) {
  const dishes = await dishesService.getDishes()
  return res.json({ data: dishes })
}