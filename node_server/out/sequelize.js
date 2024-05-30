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
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.initSequelize = exports.sequelize = exports.OrderItem = exports.Waiter = exports.Order = exports.Dish = void 0;
const sequelize_1 = require("sequelize");
const OrderState_1 = __importDefault(require("./src/features/orders/OrderState"));
const service_1 = require("./src/features/dishes/service");
const sequelize = new sequelize_1.Sequelize('kds', 'root', 'Ab7Cug84', {
    host: 'localhost',
    port: 3306,
    dialect: 'mysql'
});
exports.sequelize = sequelize;
const Dish = sequelize.define('dish', {
    name: {
        type: sequelize_1.DataTypes.STRING(256),
        allowNull: false
    },
    category: {
        type: sequelize_1.DataTypes.STRING(32),
        allowNull: false
    }
}, {
    modelName: 'dish',
    freezeTableName: true
});
exports.Dish = Dish;
const Waiter = sequelize.define('waiter', {
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
    modelName: 'waiter',
    freezeTableName: true
});
exports.Waiter = Waiter;
const Order = sequelize.define('order', {
    waiterId: {
        type: sequelize_1.DataTypes.INTEGER,
        references: {
            model: Waiter,
            key: 'id'
        },
        allowNull: false,
        field: 'waiter_id'
    },
    state: {
        type: sequelize_1.DataTypes.ENUM,
        values: Object.keys(OrderState_1.default),
        defaultValue: OrderState_1.default.inProgress,
        allowNull: false
    },
    total: {
        type: sequelize_1.DataTypes.DECIMAL(8, 2),
        allowNull: true
    }
}, {
    modelName: 'order',
    freezeTableName: true
});
exports.Order = Order;
var OrderItemState;
(function (OrderItemState) {
    OrderItemState["cooking"] = "cooking";
    OrderItemState["ready"] = "ready";
    OrderItemState["inProgress"] = "inProgress";
})(OrderItemState || (OrderItemState = {}));
const OrderItem = sequelize.define('order_item', {
    orderId: {
        type: sequelize_1.DataTypes.INTEGER,
        references: {
            model: Order,
            key: 'id'
        },
        field: 'order_id'
    },
    dishId: {
        type: sequelize_1.DataTypes.INTEGER,
        references: {
            model: Dish,
            key: 'id'
        },
        field: 'dish_id'
    },
    comment: {
        type: sequelize_1.DataTypes.STRING(256),
        allowNull: false,
        defaultValue: ""
    },
    state: {
        type: sequelize_1.DataTypes.ENUM,
        defaultValue: OrderItemState.cooking,
        values: Object.keys(OrderItemState)
    },
    count: {
        type: sequelize_1.DataTypes.INTEGER,
        defaultValue: 1,
        allowNull: false
    },
    price: {
        type: sequelize_1.DataTypes.DECIMAL(8, 2),
        allowNull: false,
    }
}, {
    modelName: 'order_item',
    freezeTableName: true
});
exports.OrderItem = OrderItem;
function initSequelize() {
    return __awaiter(this, void 0, void 0, function* () {
        yield sequelize.authenticate();
        console.log('connected to mysql successfully');
        Waiter.hasMany(Order);
        Order.belongsTo(Waiter, {
            foreignKey: 'waiter_id'
        });
        Order.belongsToMany(Dish, { through: OrderItem });
        Dish.belongsToMany(Order, { through: OrderItem });
        yield sequelize.sync({
            // alter: true,
            force: true
        });
        dummyData();
        console.log('synchronized');
    });
}
exports.initSequelize = initSequelize;
function dummyData() {
    return __awaiter(this, void 0, void 0, function* () {
        console.log('meant to insert something into the database here.');
        const dishes = {
            'Борщ': 'Перші страви',
            'Вареники': 'Перші страви',
            'Салат "Олів\'є"': 'Салати',
            'Гаспачо': 'Перші страви',
            'Блинчики': 'Другі страви',
            'Котлети по-київськи': 'Другі страви',
            'Медовик': 'Десерти',
            'Морс': 'Напої',
            'Суп-лапша': 'Перші страви',
            'Шарлотка': 'Десерти',
            'Гарбузова каша': 'Другі страви',
            'Свіжий сік': 'Напої',
            'Томатний суп': 'Перші страви',
            'Сирники': 'Десерти',
            'Цезар': 'Салати',
            'Млинці': 'Десерти',
            'Панакота': 'Десерти',
            'Фруктовий салат': 'Салати',
            'Лимонад': 'Напої',
            'Чізкейк': 'Десерти',
        };
        for (const dish in dishes) {
            yield Dish.create({
                name: dish,
                category: dishes[dish]
            });
        }
        const waiters = {
            'Іван': '0502002021',
            'Марія': '0502002022',
            'Олексій': '0502002023',
            'Тетяна': '0502002024',
            'Віталій': '0502002025',
            'Оксана': '0502002026',
            'Петро': '0502002027',
            'Анна': '0502002028',
            'Максим': '0502002029',
            'Юлія': '0502002030',
        };
        for (const waiter in waiters) {
            yield Waiter.create({
                name: waiter,
                phoneNumber: waiters[waiter]
            });
        }
        yield (0, service_1.getDishes)();
    });
}
