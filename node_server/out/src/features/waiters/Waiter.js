"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const sequelize_1 = require("sequelize");
const sequelize_2 = require("../../../sequelize");
class Waiter extends sequelize_1.Model {
}
Waiter.init({
    name: {
        type: sequelize_1.DataTypes.STRING(100),
        allowNull: false
    },
    phoneNumber: {
        field: 'phone_number',
        type: sequelize_1.DataTypes.STRING(10),
        allowNull: false
    }
}, {
    sequelize: sequelize_2.sequelize,
    modelName: 'waiter'
});
exports.default = Waiter;
