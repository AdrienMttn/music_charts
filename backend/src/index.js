import express from "express";
import dotenv from "dotenv";
import session from "express-session";
import connection from "./config/bd_cnx.js";
import { CreateUser, Logout, Login, AddRemoveFavorite,GetFavoriteByUserId } from "./controller/user.controller.js";
import {
  GetArtist,
  GetAudioUrl,
  GetWeeklyTop,
  GetAllArtists,
  GetArtistsByName,
} from "./controller/music.controller.js";


dotenv.config();

const app = express();
app.use(express.json());
// Accept URL-encoded payloads (HTML form submits)
app.use(express.urlencoded({ extended: true }));
app.use(
  session({
    secret: "b9f3c2e1-4a7d-4e6a-9d2f-8c3a1f7e2d9c$Xv!rTq#Lz@8wP",
    resave: false,
    saveUninitialized: true,
    cookie: { secure: false }, // mettre true si HTTPS
  })
);

app.get("/", async (req, res) => {
  const [rows] = await connection.execute("SELECT * FROM Artist");
  console.log(rows);
  res.send({
    test: `Username: adrien Password: 18`,
  });
});

app.post("/GetWeeklyTop", GetWeeklyTop);

//
app.post("/CreateUser", CreateUser);
app.post("/Login", Login);
app.post("/Logout", Logout);
app.post("/AddRemoveFavorite", AddRemoveFavorite);
app.post("/GetFavoriteByUserId", GetFavoriteByUserId)

app.post("/GetArtist", GetArtist);
app.post("/GetArtistsByName", GetArtistsByName);
app.get("/GetAllArtists", GetAllArtists);
app.post("/GetAudioUrl", GetAudioUrl);
app.listen(3000, () => {
  console.log(`Server listening on http://localhost:${3000}`);
});

app.get("/testlogin", (req, res) => {
  // renvoie si l'uttilisateur est connecté
  if (req.session.user) {
    res.send({
      loggedIn: true,
      user: req.session.user,
    });
  } else {
    res.send({
      loggedIn: false,
      mail: req.session.mail,
    });
  }
});
