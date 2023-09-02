import { writeFileSync } from "fs";
import path from "path";
import { pool } from "../config/bdconfig";
import * as fs from "fs-extra";
import sha1 = require("sha1");
import { DOSSIER_POCHETTES } from "../config/env_vars";
import { Film } from "./Film";

let reponse = { OK: true, msg: "", listefilms: [], genres: [] };

export const Mdl_Film_lister = async (): Promise<object> => {
  const requete = "SELECT * FROM films";
  try {
    const resultat = await pool.query(requete); // Récupérer les résultats
    reponse.listefilms = resultat[0]; // resultat[0] contient les données de la requête, les autres [1],[2],.., ce sont des méta données
  } catch (e: any) {
    reponse.OK = false;
    reponse.msg = e.message;
  } finally {
    return reponse;
  }
};

const gererFichiers = async (listeFichiers: any, titre: string): Promise<string> => {
  let pochette = "avatar.png";
  if (listeFichiers.length > 0) {
    let extension = listeFichiers[0].originalname.split(".").pop();
    pochette = sha1(titre + process.hrtime()) + "." + extension;
    await fs.rename(listeFichiers[0].path, DOSSIER_POCHETTES + pochette);
  }
  return pochette;
}

export const Mdl_Film_ajouter = async (unFilm:Film, listeFichiers:any): Promise<object> => {
  let pochette = await gererFichiers(listeFichiers, unFilm.title);
  const requete = "INSERT INTO films VALUES(0,?,?,?,?,?,?,?,?)";
  try {
    await pool.execute(requete,[unFilm.title, unFilm.year, unFilm.runtime,
    unFilm.genres, unFilm.director, unFilm.actors, unFilm.plot, pochette]); 
    reponse.msg = "Le film a été ajouté"; 
  } catch (e: any) {
    reponse.OK = false;
    reponse.msg = e.message;
  } finally {
    return reponse;
  }
}

export const Mdl_Film_genres = async (): Promise<object> => {
  const requete = "SELECT nom FROM genres";
  try {
    const resultat = await pool.query(requete); // Récupérer les résultats
    reponse.genres = resultat[0]; // resultat[0] contient les données de la requête, les autres [1],[2],.., ce sont des méta données
  } catch (e: any) {
    reponse.OK = false;
    reponse.msg = e.message;
  } finally {
    return reponse;
  }
};

export const Mdl_Film_modifier = async (unFilm:Film): Promise<object> => {
    const requete = "UPDATE films SET title = ?, year = ?, runtime = ?, genres = ?, director = ?, actors = ?, plot = ?, posterUrl = ? WHERE id = ?";
    console.log(unFilm);
    try {
      await pool.execute(requete,[unFilm.title, unFilm.year, unFilm.runtime,
      unFilm.genres, unFilm.director, unFilm.actors, unFilm.plot, unFilm.posterUrl, unFilm.id]); 
      reponse.msg = "Le film a été modifié"; 
    } catch (e: any) {
      reponse.OK = false;
      reponse.msg = e.message;
    } finally {
      return reponse;
    }
  };

export const Mdl_Film_supprimer = async (id:number): Promise<object> => {
  const requete = "DELETE FROM films WHERE id = ?";
  try {
    await pool.execute(requete,[id]); 
    reponse.msg = "Le film a été supprimé"; 
  } catch (e: any) {
    reponse.OK = false;
    reponse.msg = e.message;
  } finally {
    return reponse;
  }
};

export const Mdl_Film_liste_par_Genres = async (genre:string): Promise<object> => {
  const requete = `SELECT * FROM films WHERE LOWER(genres) LIKE "%${genre}%"`;
  try {
    const resultat = await pool.query(requete); // Récupérer les résultats
    reponse.listefilms = resultat[0]; // resultat[0] contient les données de la requête, les autres [1],[2],.., ce sont des méta données
  } catch (e: any) {
    reponse.OK = false;
    reponse.msg = e.message;
  } finally {
    return reponse;
  }
};

export const Mdl_Film_chercher = async (chr: string): Promise<object> => {
  const requete = `SELECT * FROM films WHERE LOWER(title) LIKE "%${chr}%" OR LOWER(plot) LIKE "%${chr}%" OR LOWER(actors) LIKE "%${chr}%"`;
  try {
    const resultat = await pool.query(requete); // Récupérer les résultats
    reponse.listefilms = resultat[0]; // resultat[0] contient les données de la requête, les autres [1],[2],.., ce sont des méta données
  } catch (e: any) {
    reponse.OK = false;
    reponse.msg = e.message;
  } finally {
    return reponse;
  }
}