const loadPage = () => {
	localStorage.clear();
	document.getElementsByClassName('container')[0].innerHTML = "";
	listerAvecCards(1);
}

const montrerMessage = (idElem, msg) => {
	console.log(msg)
    document.getElementById(idElem).innerHTML = msg;
    setInterval(() => {
        document.getElementById(idElem).innerHTML = "";
    }, 4000);
	chargerFilmsJSON();
}


const montrerFormEnregFilm = () => {
	document.getElementById('idForms').innerHTML = modalEnregFilms();
	const modalEnregFilm = new bootstrap.Modal('#modalEnregFilm', {
   });
   modalEnregFilm.show();
}

const montrerFormModifierFilm = (leFilm) => {
	document.getElementById('idForms').innerHTML = modalModifierFilms(leFilm);
	mettreDonneesDansFormModifierFilm(leFilm);
	const modalModifierFilm = new bootstrap.Modal('#modalModiferFilm', {
   });
   modalModifierFilm.show();
}

const montrerFormEnleverFilm = (leFilm) => {
	document.getElementById('idForms').innerHTML = modalEnleverFilms(leFilm);
	const modalEnleverFilm = new bootstrap.Modal('#modalEnleverFilm', {
   });
   modalEnleverFilm.show();
}

const modalModifierFilms = () => {
   return `
	   <!-- Modal enregistrer film -->
   <div class="modal fade" id="modalModiferFilm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	   <div class="modal-dialog">
		   <div class="modal-content">
			   <div class="modal-header">
				   <h1 class="modal-title fs-5" id="exampleModalLabel">Modification d'un film</h1>
				   <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			   </div>
			   <div class="modal-body">
				   <!-- Formulaire enregistrer film -->
				   <form id="formEnregFilm" class="row">
						<div class="col-md-3">
							<label for="num" class="form-label">Numéro</label>
							<input type="text" class="form-control is-valid" id="mdnum" name="mdnum" readonly>
						</div>
					   <div class="col-md-6">
						   <label for="titre" class="form-label">Titre</label>
						   <input type="text" class="form-control is-valid" id="mdtitre" name="mdtitre" required>
					   </div>
					   <div class="col-md-3">
						   <label for="annee" class="form-label">Annee de diffusion</label>
						   <input type="number" class="form-control is-valid" id="mdannee" name="mdannee" required>
					   </div>
					   <div class="col-md-3">
						   <label for="runtime" class="form-label">Durée du film</label>
						   <input type="number" class="form-control is-valid" id="mdruntime" name="mdruntime" required>
					   </div>
					   <div class="col-md-12">
						   <label for="genres" class="form-label">Genres</label>
						   <input type="text" class="form-control is-valid" id="mdgenres" name="mdgenres" required>
					   </div>
					   <div class="col-md-6">
						   <label for="director" class="form-label">Directeur</label>
						   <input type="text" class="form-control is-valid" id="mddirector" name="mddirector" required>
					   </div>
					   <div class="col-md-12">
						   <label for="actors" class="form-label">Acteurs</label>
						   <input type="text" class="form-control is-valid" id="mdactors" name="mdactors" required>
					   </div>
					   <div class="col-md-12">
						   <label for="plot" class="form-label">Plot</label>
						   <input type="text" class="form-control is-valid" id="mdplot" name="mdplot" required>
					   </div>
					   <div class="col-md-12">
                            <label for="posterUrl" class="form-label">Poster Link</label>
                            <input type="text" class="form-control is-valid" id="posterUrl" name="posterUrl" required>
                        </div>
					   <div class="col-12 btn-enreg">
					   <br>
						   <button class="btn btn-primary" type="button" onClick="modifierFilm();">Modifier</button>
						   <button class="btn btn-danger" type="reset">Vider</button>
						   <span id="msge"></span>
					   </div>
				   </form>
				   <!-- Fin du formulaire enregistrer film -->
			   </div>
		   </div>
	   </div>
   </div>
   <!-- Fin modal enregistrer film -->
   `;
}

const modalEnregFilms = () => {
	return `
	<!-- Modal enregistrer film -->
	<div class="modal fade" id="modalEnregFilm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">Enregistrement d'un film</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<!-- Formulaire enregistrer film -->
					<form id="formEnregFilm" class="row">
						<div class="col-md-6">
							<label for="titre" class="form-label">Titre</label>
							<input type="text" class="form-control is-valid" id="titre" name="titre" required value="">
						</div>
						<div class="col-md-3">
							<label for="annee" class="form-label">Année de publication</label>
							<input type="number" class="form-control is-valid" id="annee" name="annee" required value="">
						</div>
						<div class="col-md-3">
							<label for="runtime" class="form-label">Durée (minutes)</label>
							<input type="number" class="form-control is-valid" id="runtime" name="runtime" required value="">
						</div>
						<div class="col-md-6">
							<label for="genres" class="form-label">Genres</label>
							<input type="text" class="form-control is-valid" id="genres" name="genres" required value="">
						</div>
						<div class="col-md-6">
							<label for="director" class="form-label">Réalisateur</label>
							<input type="text" class="form-control is-valid" id="director" name="director" required value="">
						</div>
						<div class="col-md-12">
							<label for="actors" class="form-label">Acteurs</label>
							<input type="text" class="form-control is-valid" id="actors" name="actors" required value="">
						</div>
						<div class="col-md-12">
							<label for="plot" class="form-label">Synopsis</label>
							<input type="text" class="form-control is-valid" id="plot" name="plot" required value="">
						</div>
						<div class="col-md-12">
                            <label for="posterUrl" class="form-label">Pochette</label>
                            <input type="file" class="form-control is-valid" id="pochette" name="pochette[]" required>
                        </div>
						<div class="col-12 btn-enreg">
							<br>
							<button class="btn btn-primary" type="button" onClick="ajouterFilm();">Enregistrer</button>
							<button class="btn btn-danger" type="reset">Vider</button>
							<span id="msge"></span>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- Fin modal enregistrer Film -->
	`;
}

const modalEnleverFilms = (numId) => {
	return `<div class="modal fade" id = "modalEnleverFilm" tabindex="-1" role="dialog">
	<div class="modal-dialog" role="document">
	  <div class="modal-content">
		<div class="modal-header">
		  <h5 class="modal-title">Confirmer effacement</h5>
		  <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		  </button>
		</div>
		<div class="modal-body">
		  <p>Voulez-vous vraiment supprimer ce film?</p>
		</div>
		<div class="modal-footer">
		  <button type="button" class="btn btn-primary" onClick='supprimerFilm(${numId});'>Confirmer</button>
		  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Annuler</button>
		  <span id="msge"></span>
		</div>
	  </div>
	</div>
  </div>`;
}

const editerFilm = (numFilm) => {
   let leFilm = listeFilms.movies.find(unFilm => {
	   return unFilm.id == numFilm;
   });
   montrerFormModifierFilm(leFilm);
}

const construirePagination = (pageNb, lengthListeFilms) => {
	let nearby_pages_count = 6;
	const HIDDEN_PAGES = `<li class="page-item disabled"><a class="page-link" href="#">...</a></li>`;
	const PAGE_MAX_FILMS = 4;
	const DEBUT = 1;
	let pages = ``;
	const FIN = Math.ceil(lengthListeFilms / PAGE_MAX_FILMS);
	let debutPage;
	let finPage;
	if (FIN < nearby_pages_count) {nearby_pages_count = FIN}
	if (pageNb < nearby_pages_count/2+1) {
		debutPage = DEBUT+1;
		finPage = nearby_pages_count;
	}
	else if (pageNb > FIN-nearby_pages_count/2-1) {
		if (FIN >nearby_pages_count){
			pages += HIDDEN_PAGES;
			debutPage = FIN-nearby_pages_count;
		}
		finPage = FIN;
	}
	else {
		if (FIN >nearby_pages_count){
			pages += HIDDEN_PAGES;
		}
		// si NEARBY_COUNT est impaire, on peut faire math.ceiling et floor pour l'un ou l'autre borne des pages
		debutPage = pageNb - nearby_pages_count/2;
		finPage = pageNb + nearby_pages_count/2;
	}

	for (let i=debutPage; i < finPage;i++) {
		if (i == pageNb) {
			pages += `<li class="page-item active"><a class="page-link" href="#" onclick="listerAvecCards(${i})">${i}</a></li>`
		}
		else {
			pages += `<li class="page-item"><a class="page-link" href="#" onclick="listerAvecCards(${i})">${i}</a></li>`
		}
	}
	if ((!(pageNb > FIN-nearby_pages_count/2-1)) && FIN > nearby_pages_count) {
		pages += HIDDEN_PAGES;
	}
	pagination = `
		<nav aria-label="pagination">
			<ul class="pagination">
				<li class="page-item"><a class="page-link" href="#" ${pageNb != debutPage-1? "onclick='listerAvecCards("+ (pageNb-1) + ");'" : "disabled"}>Previous</a></li>
				<li class="page-item ${pageNb == 1? "active" : ""}"><a class="page-link" href="#" onclick="listerAvecCards(1);">1</a></li>
				${pages}
				<li class="page-item ${pageNb == FIN? "active" : ""}"><a class="page-link" href="#" onclick="listerAvecCards(${FIN});">${FIN}</a></li>
				<li class="page-item"><a class="page-link" href="#" ${pageNb != finPage? "onclick='listerAvecCards("+ (pageNb+1) + ");'" : "disabled"}>Next</a></li>
			</ul>
		</nav>
	`;
	return pagination;
}

const formatFilmTexte = (texte) => {
	MAX_LENGTH = 230;
	if (texte.length > MAX_LENGTH) {
		let resultat = texte.substring(0, MAX_LENGTH)
		return resultat+="..."
	}
	return texte
}

const creerCard = (unFilm) => {
	const webLink = "https";
	if (unFilm.posterUrl.substring(0, webLink.length) != webLink) {
		unFilm.posterUrl = `serveur/pochettes/${unFilm.posterUrl}`;
	}
	return `
	<div class="card-group">
		<div class="card mb-3" >
			<div class="row no-gutters">
				<div class="col-md-4">
					<img class="card-img-top" src="${unFilm.posterUrl}" alt="Card image cap">
				</div>
				<div class="col-md-8">
					<div class="card-body">
						<div class="div-icones">
							<i class="fa fa-pencil-square fa-lg edit-perso margin-icones" aria-hidden="true" onClick='editerFilm(${unFilm.id});'></i>
							<i class="fa fa-minus-square fa-lg delete-perso margin-icones" aria-hidden="true" onClick='montrerFormEnleverFilm(${unFilm.id});'></i>
						</div>
						<h5 class="card-title">${unFilm.id} | ${unFilm.title}</h5>
						<div class="card-text">${unFilm.director} | ${unFilm.actors.toString()}</div>
						<p class="card-text">${unFilm.year} | ${unFilm.runtime} mins | ${unFilm.genres.toString()}</p>
						<p class="card-text">${formatFilmTexte(unFilm.plot)}</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	`;
}

const construireNav = (pageNb, lengthListeFilms) => {
	let categoriesDOM = ``;
	if (localStorage.getItem("selectedGenre") === null) {
		categoriesDOM+=`<option selected disabled value="Tout">Catégories</option>`
	}
	else {
		categoriesDOM += `<option selected disabled value="Tout">Catégories</option>`
	}
	//Copie profonde
	let categories = JSON.parse(JSON.stringify(listeFilms.genres));
	categories.unshift({"nom":"Tout"})
	categories.forEach((unCategorie) => {
		if (localStorage.getItem("selectedGenre") == unCategorie.nom) {
			categoriesDOM += `<option selected value="${unCategorie.nom}">${unCategorie.nom}</option>`;
		}
		else {
			categoriesDOM += `<option value="${unCategorie.nom}">${unCategorie.nom}</option>`;
		}
	});
	let navigation = `
		<nav class="navbar navbar-light bg-light justify-content-between" >
			<div class="dropdown">
				<button class="btn btn-secondary dropdown-toggle" type="button" id="sortingProperty" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					Trier par
				</button>
				<div class="dropdown-menu" aria-labelledby="sortingProperty">
					<button class="dropdown-item" type="button" onClick="sortFilms('title');">Titre</button>
					<button class="dropdown-item" type="button" onClick="sortFilms('year');">Annee</button>
					<button class="dropdown-item" type="button" onClick="sortFilms('runtime');">Duree en min.</button>
				</div>
			</div>
			<form id="chercher" class="form-inline">
				<input class="form-control mr-sm-2" id="chr" name="chr" type="search" placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="button" onClick="createSearchCookie(); chercher();">Search</button>
			</form>
			<select class="custom-select" id="selectedGenre" onChange="createGenreCookie(); listerParGenre();">
				${categoriesDOM}
			</select>
			</div>
			${construirePagination(pageNb, lengthListeFilms)}
			<i class="fa fa-plus-square fa-2x add-perso margin-icones" aria-hidden="true" onClick="montrerFormEnregFilm();"></i><br/>
		</nav>
	`;
	return navigation;
}

//Pas très modulaire puisque les filtres (categories, search, trier) se font dans la fonction de listerCards
//On a tout mis dans cette fonction pour pouvoir utiliser la pagination qui appelle seulement listerAvecCards
//et faire fonctionner les filtres en meme temps
const listerAvecCards = (pageNb) => {
	let resultat = `<div class="row">`;
	let currentViewFilms = listeFilms.movies;
	for(let i=(pageNb-1)*4; i<(pageNb)*4; i++){
		if (i < currentViewFilms.length) {
			resultat += creerCard(currentViewFilms[i]);
		}
	}
	resultat += "</div>";
	document.getElementsByClassName('container')[0].innerHTML = construireNav(pageNb, currentViewFilms.length);
	document.getElementsByClassName('container')[0].innerHTML += resultat;
}

const sortFilms = (sortProperty) => {
	listeFilms.movies.sort((a, b) => (a[sortProperty] > b[sortProperty]) ? 1 : -1)
	listerAvecCards(1);
}


const createGenreCookie = () => {
	this.selected = "selected";
	const genre = document.getElementById("selectedGenre").value;
	localStorage.setItem("selectedGenre", genre);
}

const createSearchCookie = () => {
	const searchValue = document.getElementById("chr").value;
	localStorage.setItem("searchValue", searchValue)
}
  
const mettreDonneesDansFormModifierFilm = (unFilm) => {
	document.getElementById('mdnum').value = unFilm.id;
	document.getElementById('mdtitre').value = unFilm.title;
	document.getElementById('mddirector').value = unFilm.director;
	document.getElementById('mdannee').value = unFilm.year;
	document.getElementById('mdruntime').value = unFilm.runtime;
	document.getElementById('mdgenres').value = unFilm.genres;
	document.getElementById('mdactors').value = unFilm.actors;
	document.getElementById('mdplot').value = unFilm.plot;
	document.getElementById('posterUrl').value = unFilm.posterUrl;
  };