"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const sequelize_1 = require("sequelize");
const sequelize_2 = require("../../../sequelize");
class Dish extends sequelize_1.Model {
}
Dish.init({
    name: {
        type: sequelize_1.DataTypes.STRING(256),
        allowNull: false
    },
    category: {
        type: sequelize_1.DataTypes.STRING(32),
        allowNull: false
    }
}, {
    sequelize: sequelize_2.sequelize,
    modelName: 'dish'
});
