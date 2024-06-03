import { CreationOptional, DataTypes, ForeignKey, InferAttributes, InferCreationAttributes, Model, NonAttribute, QueryTypes, Sequelize } from "sequelize";
import OrderState from "./src/features/orders/OrderState";

import { getDishes } from "./src/features/dishes/service";
import { addOrder, getOrder, getOrders } from "./src/features/orders/data/repository";
import OrderItemState from "./src/features/orders/OrderItemState";
import { orderQuery } from "./src/features/orders/data/join";
import { CreateOrder } from "./src/features/orders/CreateOrder";
import { updateOrderItemState } from "./src/features/orders/data/repository";

const sequelize = new Sequelize('kds', 'root', 'Ab7Cug84', { 
  host: 'localhost',
  port: 3306,
  dialect: 'mysql'
})

interface IWaiter {
  id: number
  name: string
  phoneNumber: string
}

interface IDish {
  id: number
  name: string
  category: string
  price: number
}

interface IOrderItem {
  dishId: number
  orderId: number
  price: number
  comment: string
  state: OrderItemState
  count: number

  dish?: IDish
  order?: IOrder
}

interface IOrder {
  id: number
  waiterId: number
  total?: number
  date: Date
  state: OrderState

  items?: IOrderItem[]
  waiter?: IWaiter
}


class Waiter extends Model<InferAttributes<Waiter>, InferCreationAttributes<Waiter>> {
  declare id: CreationOptional<number>
  declare name: string
  declare phoneNumber: string
}

class Dish extends Model<InferAttributes<Dish>, InferCreationAttributes<Dish>> {
  declare id: CreationOptional<number>
  declare name: string
  declare category: string
  declare price: CreationOptional<number>
}

class OrderItem extends Model<InferAttributes<OrderItem>, InferCreationAttributes<OrderItem>> {
  declare orderId: ForeignKey<Order['id']>
  declare dishId: ForeignKey<Dish['id']>
  declare price: CreationOptional<number>
  declare comment: CreationOptional<string>
  declare state: CreationOptional<OrderItemState>
  declare count: CreationOptional<number>

  declare dish: NonAttribute<Dish>
}

class Order extends Model<InferAttributes<Order>, InferCreationAttributes<Order>> {
  declare id: CreationOptional<number>
  declare waiterId: ForeignKey<Waiter['id']>
  declare total: CreationOptional<number>
  declare date: CreationOptional<Date>
  declare state: CreationOptional<OrderState>

  declare items: NonAttribute<IOrderItem[]>
  declare waiter: NonAttribute<IWaiter>
}

Waiter.init({
  id: {
    type: DataTypes.INTEGER.UNSIGNED,
    autoIncrement: true,
    primaryKey: true
  },
  name: {
    type: DataTypes.STRING(100),
    allowNull: false
  },
  phoneNumber: {
    field: 'phone_number',
    type: DataTypes.STRING(10),
    allowNull: false
  }
}, { 
  timestamps: false,
  sequelize: sequelize,
  modelName: 'waiter', 
  freezeTableName: true 
})

Dish.init({
  id: {
    type: DataTypes.INTEGER.UNSIGNED,
    autoIncrement: true,
    primaryKey: true
  },
  name: {
    type: DataTypes.STRING(256),
    allowNull: false
  },
  category: {
    type: DataTypes.STRING(32),
    allowNull: false
  },
  price: {
    type: DataTypes.DECIMAL(8, 2),
    allowNull: false,
  }
}, { 
  timestamps: false,
  sequelize: sequelize,
  modelName: 'dish', 
  freezeTableName: true 
})

Order.init({
  id: {
    type: DataTypes.INTEGER.UNSIGNED,
    autoIncrement: true,
    primaryKey: true
  },
  waiterId: {
    type: DataTypes.INTEGER,
    references: {
      model: Waiter,
      key: 'id'
    },
    allowNull: false,
    field: 'waiter_id'
  },
  date: {
    type: DataTypes.DATE,
    allowNull: false,
    defaultValue: Sequelize.fn("now")
  },
  state: {
    type: DataTypes.ENUM,
    values: Object.keys(OrderState),
    defaultValue: OrderState.inProgress,
    allowNull: false
  },
  total: {
    type: DataTypes.DECIMAL(8, 2),
    allowNull: true
  }
}, { 
  timestamps: false,
  sequelize: sequelize,
  modelName: 'order', 
  freezeTableName: true 
})

OrderItem.init({
  orderId: {
    type: DataTypes.INTEGER.UNSIGNED,
    references: {
      model: Order,
      key: 'id'
    },
    field: 'order_id'
  },
  dishId: {
    type: DataTypes.INTEGER,
    references: {
      model: Dish,
      key: 'id'
    },
    field: 'dish_id'
  },
  comment: {
    type: DataTypes.STRING(256),
    allowNull: false,
    defaultValue: ""
  },
  state: {
    type: DataTypes.ENUM,
    defaultValue: OrderItemState.cooking,
    values: Object.keys(OrderItemState)
  },
  count: {
    type: DataTypes.INTEGER,
    defaultValue: 1,
    allowNull: false
  },
  price: {
    type: DataTypes.DECIMAL(8, 2),
    allowNull: true,
  }
}, { 
  timestamps: false,
  sequelize: sequelize,
  modelName: 'order_item', 
  freezeTableName: true 
})



async function initSequelize() {

  await sequelize.authenticate()
  console.log('connected to mysql successfully')

  Waiter.hasMany(Order)
  Order.belongsTo(Waiter, {
    foreignKey: 'waiter_id'
  })
  Order.belongsToMany(Dish, { through: OrderItem })
  Dish.belongsToMany(Order, { through: OrderItem })

  await sequelize.sync({
    // alter: true,
    force: true
  })
  await createTriggers()

  await dummyData()

  console.log('synchronized')
}

async function createTriggers() {
  await sequelize.query(`
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
    type: QueryTypes.RAW
  })
}

async function dummyData() {
  console.log('meant to insert something into the database here.')

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
    await Dish.create(dish)
  }

  const waiters = {
    'Іван':    '0502002021',
    'Марія':   '0502002022',
    'Олексій': '0502002023',
    'Тетяна':  '0502002024',
    'Віталій': '0502002025',
    'Оксана':  '0502002026',
    'Петро':   '0502002027',
    'Анна':    '0502002028',
    'Максим':  '0502002029',
    'Юлія':    '0502002030',
  }

  for (const waiter in waiters) {
    await Waiter.create({ 
      name: waiter,
      phoneNumber: waiters[waiter as keyof typeof waiters]
    })
  }

  const order: CreateOrder = {
    waiterId: 1,
    items: []
  };

  for (let i = 1; i < 4; i++) {
    order.items.push({
      dishId: i,
      comment: "first comment",
      count: i+10
    })
  }

  await addOrder(order)
  await updateOrderItemState({
    orderId: 1,
    dishId: 1,
    newState: OrderItemState.ready
  })
  const ord = await getOrder(1)
  console.log(ord)
}

export {
  Dish,
  IDish,

  Order,
  IOrder,

  Waiter,
  IWaiter,

  OrderItem,
  IOrderItem,
  sequelize,
  initSequelize
}