import express from "express"
import * as dishesController from "./controller"

const dishesRouter = express.Router()

dishesRouter.get("/", dishesController.getDishes)

export default dishesRouter