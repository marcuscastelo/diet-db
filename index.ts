import Express from "express";
import { config } from "dotenv";
import db, { initDB } from "./utils/surreal_db";

async function main() {
    config();
    initDB();

    const app = Express();

    app.get("/", (req, res) => {
        res.send("Hello World!");
    });

    app.get("/create", (req, res) => {
        db.create('food', {
            name: 'Pizza' + Math.random(),
            price: 10.99 + Math.random(),
        }).then((dbRes) => {
            res.send(dbRes);
        }).catch((err) => {
            res.send(err);
        });
    });

    app.get("/select", (req, res) => {
        db.select('food').then((dbRes) => {
            res.send(dbRes);
        }
        ).catch((err) => {
            res.send(err);
        });
    });

    const server = app.listen(process.env.PORT || 3000, () => {
        console.log(`Server started on port ${process.env.PORT}`);
    });


}

main();