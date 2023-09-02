// Importation des modules nécessaires au fichier serveur.ts
import express from "express";
import { NextFunction, Request, Response } from "express";
import bodyParser = require("body-parser");
import http from "http";
import path from "path";
import { repartiteurFilm } from "./app/src/serveur/Film/controleurFilm";
import multer = require("multer"); //mutipart form data: upload de fichiers
let upload = multer({ dest: "uploads/" });

// Création d'un serveur Node dont les requêtes entrantes
// et sortantes sont gérées par express.

const exp = express();
const serveur = http.createServer(exp);
const porte = 8383;
serveur.listen(porte); // Famille des 8080-8888
console.log(`\nServeur démarré sur le port ${porte}`);

// Pour obtenir les ressources statiques css, js, images, ...
// qui partiront avec vos pages web via les balises link, script, <img src=
exp.use(express.static(__dirname + "/app/src"));
// Support json encoded bodies
exp.use(bodyParser.json());
// Support text encoded bodies
exp.use(bodyParser.text());
// Support text encoded bodies
exp.use(express.urlencoded({ extended: true }));


//Traiter les requêtes provenant du client et les réponses à retourner au client
exp.get("/", async (req: Request, res: Response, next: NextFunction) => {
  res.sendFile(path.join(__dirname + "/app/src/index.html"));
});

exp.all("/film", upload.array("pochette[]"), async (req: Request, res: Response) => {
  try {
  let reponse = await repartiteurFilm(req);// Répartiteur = Dispatcher
  res.header("Content-type", "application/json");
  res.header("Charset", "utf8");
  res.send(JSON.stringify(reponse));
  } catch (error){
    console.log('Erreur dans la méthode /film :'+ error );
  }
});

exp.all("/membres", async (req: Request, res: Response) => {
  res.send(JSON.stringify({"msg": "En cours de développement!"}));
});

