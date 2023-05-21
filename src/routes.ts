import { Router } from "express";
import db from "./utils/surreal_db";
import { Result } from "surrealdb.js";
import * as dayController from "./controllers/dayController";
import * as foodController from "./controllers/foodController";

const router = Router();

router.get("/food", async (req, res) => {
    const foods = await foodController.listFoods();
    res.send(foods);
});

router.get("/day/:id", async (req, res) => {
    const days = await dayController.getDay(req.params.id);
    if (days) res.send(days);
    else {
        const create = req.query.create;
        if (create === "true") {
            const day = await dayController.createDay(req.params.id);
            res.send(day);
            return;
        }
        res.status(404).send("404");
    }
});

router.get("/day", async (req, res) => {
    const days = await dayController.listDays();
    res.send(days);
});

router.get("/meal", async (req, res) => {
    const meals = await db.select('meal').catch(err => "Error: " + err);
    res.send(meals);
});

router.get("/food", async (req, res) => {
    const foods = await db.select('food').catch(err => "Error: " + err);
    res.send(foods);
});

router.get("/meal/:id/", async (req, res) => {
    const foods = await db.query(`select ->contain->mealitem as items from meal:${req.params.id}`).catch(err => "Error: " + err);
    res.send(foods);
});

export default router;