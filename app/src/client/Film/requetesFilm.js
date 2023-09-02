/**
 * @type {{ movies: any[]; genres: any; } | null}
 */
let listeFilms = {
    movies:[],
    genres:[]
};

const chargerFilmsJSON = () => {
    $.ajax({
        url:"/film",
        type:"POST",
        data:{"action":"lister"},
        dataType:'json',  // Type de la réponse : json, xml, text
        success: (reponse) => {
            //alert(reponse); // Ne pas oublier de mettre dataType='text' au lieu de json
            listeFilms.movies = reponse.listefilms;
            document.getElementsByClassName('container')[0].innerHTML = "<strong>Le fichier a été chargé.</strong>";
        },
        fail: (e) => {
            alert(`Gros problème : ${e.message}`);
        }
    });
}

const ajouterFilm = () => {
    let formData = new FormData(document.getElementById('formEnregFilm'));
    formData.append('action', 'ajouter');
    $.ajax({
        url:"/film",
        type:"POST",
        data:formData,
        dataType:'json',  // json, xml, text
        async: true, // false pour se  mettre en mode synchrone.
        contentType : false, // Pour signaler qu'il y a aussi des fichier à envoyer au serveur
		processData : false,
        success: (reponse) => {
            //alert(reponse);
            montrerMessage('msge', reponse.msg);
        },
        fail: (e) => {
            montrerMessage('msge', e.message);
        }
    });
}

const modifierFilm = () => {
    let formData = new FormData(document.getElementById('formEnregFilm'));
    formData.append('action', 'modifier');
    $.ajax({
        url:"/film",
        type:"POST",
        data:formData,
        dataType:'json',  // json, xml, text
        async: true, // false pour se  mettre en mode synchrone.
        contentType : false, // Pour signaler qu'il y a aussi des fichier à envoyer au serveur
		processData : false,
        success: (reponse) => {
            //alert(reponse);
            montrerMessage('msge', reponse.msg);
        },
        fail: (e) => {
            montrerMessage('msge', e.message);
        }
    });
}

const chargerGenresJSON = () => {
    $.ajax({
        url:"/film",
        type:"POST",
        data:{"action":"genres"},
        dataType:'json',  // Type de la réponse : json, xml, text
        success: (reponse) => {
            //alert(reponse); // Ne pas oublier de mettre dataType='text' au lieu de json
            listeFilms.genres = reponse.genres;
        },
        fail: (e) => {
            alert(`Gros probléme : ${e.message}`);
        }
    });
}

const supprimerFilm = (idFilm) => {
    $.ajax({
        url:"/film",
        type:"POST",
        data:{'action':'supprimer', 'idFilm':idFilm},
        dataType:'json',  // json, xml, text
        async: true, // false pour se  mettre en mode synchrone.
        success: (reponse) => {
            //alert(reponse);
            montrerMessage('msge', reponse.msg);
        },
        fail: (e) => {
            montrerMessage('msge', e.message);
        }
    });
}

let listerParGenre = () => {
    if (document.getElementById("selectedGenre").value.toLowerCase() == "tout") {
        chargerFilmsJSON();
    }
    else {
        $.ajax({
            url:"/film",
            type:"POST",
            data:{'action':'listerParGenre', 'genre':document.getElementById("selectedGenre").value.toLowerCase()},
            dataType:'json',  // json, xml, text
            async: true, // false pour se  mettre en mode synchrone.
            success: (reponse) => {
                listeFilms.movies = reponse.listefilms;
                listerAvecCards(1);
            },
            fail: (e) => {
                alert(`Gros probléme : ${e.message}`);
            }
        });
    }
}

const chercher = async () => {
    let formData = new FormData(document.getElementById("chercher"));
    formData.append('action', 'chercher');
    $.ajax({
        url:"/film",
        type:"POST",
        data:formData,
        dataType:'json',  // json, xml, text
        async: true, // false pour se  mettre en mode synchrone.
        contentType : false, // Pour signaler qu'il y a aussi des fichier à envoyer au serveur
		processData : false,
        success: (reponse) => {
            listeFilms.movies = reponse.listefilms;
            listerAvecCards(1);
        },
        fail: (e) => {
             alert(`Gros probléme : ${e.message}`);
        }
    });
}