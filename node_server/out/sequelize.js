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
const repository_1 = require("./src/features/orders/data/repository");
const OrderItemState_1 = __importDefault(require("./src/features/orders/OrderItemState"));
const repository_2 = require("./src/features/orders/data/repository");
const sequelize = new sequelize_1.Sequelize('kds', 'root', 'Ab7Cug84', {
    host: 'localhost',
    port: 3306,
    dialect: 'mysql'
});
exports.sequelize = sequelize;
class Waiter extends sequelize_1.Model {
}
exports.Waiter = Waiter;
class Dish extends sequelize_1.Model {
}
exports.Dish = Dish;
class OrderItem extends sequelize_1.Model {
}
exports.OrderItem = OrderItem;
class Order extends sequelize_1.Model {
}
exports.Order = Order;
Waiter.init({
    id: {
        type: sequelize_1.DataTypes.INTEGER.UNSIGNED,
        autoIncrement: true,
        primaryKey: true
    },
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
    timestamps: false,
    sequelize: sequelize,
    modelName: 'waiter',
    freezeTableName: true
});
Dish.init({
    id: {
        type: sequelize_1.DataTypes.INTEGER.UNSIGNED,
        autoIncrement: true,
        primaryKey: true
    },
    name: {
        type: sequelize_1.DataTypes.STRING(256),
        allowNull: false
    },
    category: {
        type: sequelize_1.DataTypes.STRING(32),
        allowNull: false
    },
    price: {
        type: sequelize_1.DataTypes.DECIMAL(8, 2),
        allowNull: false,
    }
}, {
    timestamps: false,
    sequelize: sequelize,
    modelName: 'dish',
    freezeTableName: true
});
Order.init({
    id: {
        type: sequelize_1.DataTypes.INTEGER.UNSIGNED,
        autoIncrement: true,
        primaryKey: true
    },
    waiterId: {
        type: sequelize_1.DataTypes.INTEGER,
        references: {
            model: Waiter,
            key: 'id'
        },
        allowNull: false,
        field: 'waiter_id'
    },
    date: {
        type: sequelize_1.DataTypes.DATE,
        allowNull: false,
        defaultValue: sequelize_1.Sequelize.fn("now")
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
    timestamps: false,
    sequelize: sequelize,
    modelName: 'order',
    freezeTableName: true
});
OrderItem.init({
    orderId: {
        type: sequelize_1.DataTypes.INTEGER.UNSIGNED,
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
        defaultValue: OrderItemState_1.default.cooking,
        values: Object.keys(OrderItemState_1.default)
    },
    count: {
        type: sequelize_1.DataTypes.INTEGER,
        defaultValue: 1,
        allowNull: false
    },
    price: {
        type: sequelize_1.DataTypes.DECIMAL(8, 2),
        allowNull: true,
    }
}, {
    timestamps: false,
    sequelize: sequelize,
    modelName: 'order_item',
    freezeTableName: true
});
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
        yield createTriggers();
        yield dummyData();
        console.log('synchronized');
    });
}
exports.initSequelize = initSequelize;
function createTriggers() {
    return __awaiter(this, void 0, void 0, function* () {
        yield sequelize.query(`
    CREATE TRIGGER order_item_price
    BEFORE INSERT
    ON kds.order_item FOR EACH ROW
    BEGIN
      DECLARE dish_price DECIMAL(8,2);
      
      SELECT d.price INTO dish_price
      FROM dish d 
      WHERE d.id = NEW.dish_id;
      
      SET NEW.price = dish_price;
        
      UPDATE \`order\`
      SET total = IF(total IS NULL, dish_price, total + dish_price)
      WHERE id = NEW.order_id;
    END
  `, {
            type: sequelize_1.QueryTypes.RAW
        });
    });
}
function dummyData() {
    return __awaiter(this, void 0, void 0, function* () {
        console.log('meant to insert something into the database here.');
        const dishes = [
            { name: 'Борщ', category: 'Перші страви', price: 5.50 },
            { name: 'Вареники', category: 'Перші страви', price: 6.00 },
            { name: 'Салат "Олів\'є"', category: 'Салати', price: 4.50 },
            { name: 'Гаспачо', category: 'Перші страви', price: 5.00 },
            { name: 'Блинчики', category: 'Другі страви', price: 4.00 },
            { name: 'Котлети по-київськи', category: 'Другі страви', price: 7.50 },
            { name: 'Медовик', category: 'Десерти', price: 3.50 },
            { name: 'Морс', category: 'Напої', price: 2.00 },
            { name: 'Суп-лапша', category: 'Перші страви', price: 5.00 },
            { name: 'Шарлотка', category: 'Десерти', price: 3.00 },
            { name: 'Гарбузова каша', category: 'Другі страви', price: 4.50 },
            { name: 'Свіжий сік', category: 'Напої', price: 2.50 },
            { name: 'Томатний суп', category: 'Перші страви', price: 5.00 },
            { name: 'Сирники', category: 'Десерти', price: 3.50 },
            { name: 'Цезар', category: 'Салати', price: 5.00 },
            { name: 'Млинці', category: 'Десерти', price: 3.00 },
            { name: 'Панакота', category: 'Десерти', price: 4.00 },
            { name: 'Фруктовий салат', category: 'Салати', price: 4.00 },
            { name: 'Лимонад', category: 'Напої', price: 2.50 },
            { name: 'Чізкейк', category: 'Десерти', price: 4.50 }
        ];
        for (const dish of dishes) {
            yield Dish.create(dish);
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
        const order = {
            waiterId: 1,
            items: []
        };
        for (let i = 1; i < 4; i++) {
            order.items.push({
                dishId: i,
                comment: "first comment",
                count: i + 10
            });
        }
        yield (0, repository_1.addOrder)(order);
        yield (0, repository_2.updateOrderItemState)({
            orderId: 1,
            dishId: 1,
            newState: OrderItemState_1.default.ready
        });
        const ord = yield (0, repository_1.getOrder)(1);
        console.log(ord);
    });
}
