import { Model, QueryTypes } from "sequelize";
import { Waiter, sequelize } from "../../../sequelize";

export async function getWaiters() : Promise<Model[]> {
  const waiters = await sequelize.query('SELECT * FROM waiter', {
    mapToModel: true,
    model: Waiter,
    type: QueryTypes.SELECT
  })
  return waiters
}