import { Result } from "surrealdb.js";
import { Food } from "../model/foodModel";
import db from "../utils/surreal_db";
import { getFirst, unwrap } from "../utils/result";

export const listFoods = async () =>
    await db.query<Result<Food[]>[]>(
        `select * from food`
    ).then(getFirst).then(unwrap);