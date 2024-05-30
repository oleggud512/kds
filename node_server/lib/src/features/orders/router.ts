import express from "express";
import * as ordersController from "./controller"

const ordersRouter = express.Router()

ordersRouter.get("/", ordersController.getOrders)
ordersRouter.post("/", ordersController.addOrder)
ordersRouter.delete("/:id", ordersController.deleteOrder)

export default ordersRouter