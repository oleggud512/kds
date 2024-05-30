"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    var desc = Object.getOwnPropertyDescriptor(m, k);
    if (!desc || ("get" in desc ? !m.__esModule : desc.writable || desc.configurable)) {
      desc = { enumerable: true, get: function() { return m[k]; } };
    }
    Object.defineProperty(o, k2, desc);
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || function (mod) {
    if (mod && mod.__esModule) return mod;
    var result = {};
    if (mod != null) for (var k in mod) if (k !== "default" && Object.prototype.hasOwnProperty.call(mod, k)) __createBinding(result, mod, k);
    __setModuleDefault(result, mod);
    return result;
};
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.deleteOrder = exports.updateOrderItemState = exports.addOrder = exports.getOrders = void 0;
const ordersService = __importStar(require("./service"));
const ordersRepository = __importStar(require("./data/repository"));
const tryParseInt_1 = require("../../common/tryParseInt");
const tryParseDate_1 = require("../../common/tryParseDate");
const OrderState_1 = __importDefault(require("./OrderState"));
function getOrders(req, res, next) {
    return __awaiter(this, void 0, void 0, function* () {
        var _a;
        const waiterId = (0, tryParseInt_1.tryParseInt)((_a = req.query.waiterId) !== null && _a !== void 0 ? _a : res.locals.waiterId);
        const startDate = (0, tryParseDate_1.tryParseDate)(req.query.startDate);
        const endDate = (0, tryParseDate_1.tryParseDate)(req.query.endDate);
        const state = req.query.state
            ? OrderState_1.default[req.params.state]
            : undefined;
        const orders = yield ordersRepository.getOrders({
            waiterId: waiterId,
            startDate,
            endDate,
            state
        });
        return res.json({ data: orders });
    });
}
exports.getOrders = getOrders;
function addOrder(req, res, next) {
    return __awaiter(this, void 0, void 0, function* () {
        const waiterId = (0, tryParseInt_1.tryParseInt)(res.locals.waiterId);
        const items = [];
        for (const item of req.body.items) {
            items.push({
                comment: item.comment,
                dishId: (0, tryParseInt_1.tryParseInt)(item.dishId),
                count: (0, tryParseInt_1.tryParseInt)(item.count)
            });
        }
        ordersService.addOrder({ waiterId: waiterId, items });
    });
}
exports.addOrder = addOrder;
function updateOrderItemState(req, res, next) {
    return __awaiter(this, void 0, void 0, function* () {
        const orderId = (0, tryParseInt_1.tryParseInt)(req.params.orderId);
        const dishId = (0, tryParseInt_1.tryParseInt)(req.params.dishId);
        const newState = req.body.state;
        yield ordersService.updateOrderItemState({
            orderId,
            dishId,
            newState
        });
        return res.json({ data: 'success' });
    });
}
exports.updateOrderItemState = updateOrderItemState;
function deleteOrder(req, res, next) {
    return __awaiter(this, void 0, void 0, function* () {
    });
}
exports.deleteOrder = deleteOrder;
