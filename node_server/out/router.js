"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const router_1 = __importDefault(require("./src/features/waiters/router"));
const router_2 = __importDefault(require("./src/features/dishes/router"));
const router_3 = __importDefault(require("./src/features/orders/router"));
const rootRouter = express_1.default.Router();
rootRouter.use("/waiters", router_1.default);
rootRouter.use("/dishes", router_2.default);
rootRouter.use("/orders", router_3.default);
exports.default = rootRouter;
