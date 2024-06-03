import mysql from 'mysql2/promise';
import { orderItemQuery, orderQuery } from './src/features/orders/data/join';
import { OrderItem } from './sequelize';
import OrderItemState from './src/features/orders/OrderItemState';
import { Connection } from 'mysql2/promise';


class Db {
  private static _inst?: Connection

  public static get conn() : Connection {
    return this._inst!;
  }

  public static async init() : Promise<void> {
    Db._inst = await mysql.createConnection({
      host: "localhost",
      port: 3306,
      // TODO: hide
      password: "Ab7Cug84",
      user: "root",
      database: "kds",
    })
  }
}

export default Db