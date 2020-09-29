class MovieEntity {
  final int idMovie;
  final double voteAverageMovie;
  final String titleMovie;
  final String posterUrlMovie;
  final String releaseDate;
  final List<String> genres;
  MovieEntity({
    this.idMovie,
    this.voteAverageMovie,
    this.titleMovie,
    this.posterUrlMovie,
    this.releaseDate,
    this.genres,
  });

  factory MovieEntity.fromJson(Map<String, dynamic> json) {
    List<String> genresList = new List<String>.from(json['genres']);

    return MovieEntity(
        idMovie: json['id'],
        voteAverageMovie: json['vote_average'],
        titleMovie: json['title'],
        posterUrlMovie: json['poster_url'],
        releaseDate: json['release_date'],
        genres: genresList);
  }
}
