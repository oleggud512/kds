import { Model, QueryTypes } from "sequelize";
import { IWaiter, Waiter, sequelize } from "../../../sequelize";

export async function getWaiters() : Promise<Model[]> {
  const waiters = await sequelize.query('SELECT * FROM waiter', {
    mapToModel: true,
    model: Waiter,
    type: QueryTypes.SELECT
  })
  return waiters
}

export async function getWaiter(id: number) : Promise<IWaiter> {
  const waiters = await sequelize.query(`
    SELECT * 
    FROM waiter 
    WHERE id = :id
  `, {
    replacements: {
      id
    },
    mapToModel: true,
    model: Waiter
  })

  const waiter = waiters[0].dataValues

  return waiter
}