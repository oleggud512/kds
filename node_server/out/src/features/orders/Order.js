"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const sequelize_1 = require("sequelize");
const sequelize_2 = require("../../../sequelize");
const Waiter_1 = __importDefault(require("../waiters/Waiter"));
const OrderState_1 = __importDefault(require("./OrderState"));
class Order extends sequelize_1.Model {
}
Order.init({
    waiterId: {
        type: sequelize_1.DataTypes.INTEGER,
        references: {
            model: Waiter_1.default,
            key: 'id'
        },
        allowNull: false,
        field: 'waiter_id'
    },
    state: {
        type: sequelize_1.DataTypes.ENUM,
        values: Object.keys(OrderState_1.default),
        allowNull: false
    },
    total: {
        type: sequelize_1.DataTypes.DECIMAL(8, 2),
        defaultValue: 0.0,
        allowNull: false
    }
}, {
    sequelize: sequelize_2.sequelize,
    modelName: 'order'
});
exports.default = Order;
