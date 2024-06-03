import express from "express";
import * as waitersController from "./controller"

const waitersRouter = express.Router()

waitersRouter.get('/', waitersController.getWaiters)
waitersRouter.get('/:id', waitersController.getWaiter)

export default waitersRouter