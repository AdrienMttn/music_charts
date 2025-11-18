import express from "express";
import dotenv from "dotenv";

dotenv.config();

const app = express();
app.use(express.json());

app.get("/", (req, res) => {
  res.send({
    test: `Username: adrien Password: 18`,
  });
});

app.listen(3000, () => {
  console.log(`Server listening on http://localhost:${3000}`);
});