export class Film {
    id: number;
    title: string;
    year: number;
    runtime: number;
    genres: Array<String>;
    director: String;
    actors: String;
    plot: String;
    posterUrl: String;
  
    constructor(
        id: number,
        title: string,
        year: number,
        runtime: number,
        genres: Array<String>,
        director: String,
        actors: String,
        plot: String,
        posterUrl: String
    ) {
        this.id = id;
        this.title = title;
        this.year = year;
        this.runtime = runtime;
        this.genres = genres;
        this.director = director;
        this.actors = actors;
        this.plot = plot;
        this.posterUrl = posterUrl;
    }
  }
  