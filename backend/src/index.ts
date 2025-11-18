import express from "express";

const app = express();
const PORT = process.env.PORT ?? 3000;

app.get("/", (req, res) => {
  try {
    res.json({ ok: true, message: "Serveur Express + TypeScript minimal" });
  } catch (error) {
    res.json({ error: true, message: "Erreur" });
  }
});

app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
});
