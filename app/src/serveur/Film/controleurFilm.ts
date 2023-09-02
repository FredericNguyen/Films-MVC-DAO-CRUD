import { Request, Response } from "express";
import { Mdl_Film_modifier, Mdl_Film_lister, Mdl_Film_ajouter, Mdl_Film_genres, Mdl_Film_supprimer, Mdl_Film_liste_par_Genres, Mdl_Film_chercher} from "./modelFilm"
import { Film } from "./Film";
const Crt_Film_lister = async () => {
  return await Mdl_Film_lister();
}

const Crt_Film_ajouter = async (req: Request) => {
  const unFilm:Film = new Film(0,req.body.titre, req.body.annee, req.body.runtime, req.body.genres, req.body.director, req.body.actors, req.body.plot, "");
  return await Mdl_Film_ajouter(unFilm, req.files);
};

const Crt_Film_modifier = async (req: Request) => {
  const unFilm:Film = new Film(req.body.mdnum, req.body.mdtitre, req.body.mdannee, req.body.mdruntime, req.body.mdgenres, req.body.mddirector, req.body.mdactors, req.body.mdplot, req.body.posterUrl);
  console.log(unFilm)
  return await Mdl_Film_modifier(unFilm);
};

const Crt_Film_supprimer = async (req: Request) => {
  return await Mdl_Film_supprimer(req.body.idFilm);
};

export const repartiteurFilm = async (req: Request): Promise<Object> => {
  const action = req.body.action;
  switch (action) {
    case 'lister' :
      return await Crt_Film_lister();
    case "ajouter":
      return await Crt_Film_ajouter(req);
    case 'genres':
      return await Crt_Film_Genres();
    case "modifier" :
      return await Crt_Film_modifier(req);
    case "supprimer" :
      return await Crt_Film_supprimer(req);
    case 'listerParGenre':
      return await Crt_Film_liste_par_Genre(req.body.genre);
    case 'chercher':
      return await Crt_Film_chercher(req);
    default:
      return new Promise((resolve) => {
        resolve("La page n'existe pas.");
      });
  }
};

const Crt_Film_Genres = async () => {
  return await Mdl_Film_genres();
}

const Crt_Film_liste_par_Genre = async (genre:string) => {
  return await Mdl_Film_liste_par_Genres(genre);
}

const Crt_Film_chercher = async (req: Request) => {
  return await Mdl_Film_chercher((req.body.chr).toLowerCase());
}