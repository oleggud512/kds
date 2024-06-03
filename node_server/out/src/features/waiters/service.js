"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.getWaiter = exports.getWaiters = void 0;
const sequelize_1 = require("sequelize");
const sequelize_2 = require("../../../sequelize");
function getWaiters() {
    return __awaiter(this, void 0, void 0, function* () {
        const waiters = yield sequelize_2.sequelize.query('SELECT * FROM waiter', {
            mapToModel: true,
            model: sequelize_2.Waiter,
            type: sequelize_1.QueryTypes.SELECT
        });
        return waiters;
    });
}
exports.getWaiters = getWaiters;
function getWaiter(id) {
    return __awaiter(this, void 0, void 0, function* () {
        const waiters = yield sequelize_2.sequelize.query(`
    SELECT * 
    FROM waiter 
    WHERE id = :id
  `, {
            replacements: {
                id
            },
            mapToModel: true,
            model: sequelize_2.Waiter
        });
        const waiter = waiters[0].dataValues;
        return waiter;
    });
}
exports.getWaiter = getWaiter;
