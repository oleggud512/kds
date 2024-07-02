import { Model, QueryTypes } from "sequelize";
import { Dish, sequelize } from "../../../sequelize";

export async function getDishes() : Promise<Model[]> {
  const dishes = await sequelize.query('SELECT * FROM dish ORDER BY category', {
    mapToModel: true,
    model: Dish,
    type: QueryTypes.SELECT
  })
  return dishes
}