import Express from "express";
import { config } from "dotenv";
import db, { initDB } from "./utils/surreal_db";
import router from "./routes";

async function main() {
    config();
    initDB();

    const app = Express();

    app.use(router);

    app.listen(process.env.PORT || 3000, () => {
        console.log(`Server started on port ${process.env.PORT}`);
    });
}

main();