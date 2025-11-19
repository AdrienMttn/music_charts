import express from "express";
import dotenv from "dotenv";
import connection from "./config/bd_cnx.js";
import { GetWeeklyTop } from "./controller/music.controller.js";

dotenv.config();

const app = express();
app.use(express.json());

app.get("/", async (req, res) => {
  const [rows] = await connection.execute("SELECT * FROM Artist");
  console.log(rows);
  res.send({
    test: `Username: adrien Password: 18`,
  });
});

app.post("/GetWeeklyTop", GetWeeklyTop);

app.listen(3000, () => {
  console.log(`Server listening on http://localhost:${3000}`);
});