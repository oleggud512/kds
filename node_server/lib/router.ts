import express from "express"
import waitersRouter from "./src/features/waiters/router"
import dishesRouter from "./src/features/dishes/router"
import ordersRouter from "./src/features/orders/router"


const rootRouter = express.Router()

rootRouter.use("/waiters", waitersRouter)
rootRouter.use("/dishes", dishesRouter)
rootRouter.use("/orders", ordersRouter)

export default rootRouter