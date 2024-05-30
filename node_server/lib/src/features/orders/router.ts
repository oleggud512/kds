import express from "express";
import * as ordersController from "./controller"
import { hasWaiter } from "../auth/has-waiter";
import { couldHaveWaiter as mightHaveWaiter } from "../auth/might-have-waiter";

const ordersRouter = express.Router()

ordersRouter.get("/", 
  mightHaveWaiter,
  ordersController.getOrders
)

ordersRouter.post("/", 
  hasWaiter,
  ordersController.addOrder
)

ordersRouter.delete("/:id", 
  ordersController.deleteOrder
)

ordersRouter.patch("/:orderId/items/:dishId", 
  ordersController.updateOrderItemState
)

export default ordersRouter