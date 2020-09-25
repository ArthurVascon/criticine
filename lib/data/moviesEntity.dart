class MovieEntity {
  final int idMovie;
  final double voteAverageMovie;
  final String titleMovie;
  final String posterUrlMovie;

  MovieEntity(
      {this.idMovie,
      this.voteAverageMovie,
      this.titleMovie,
      this.posterUrlMovie});

  factory MovieEntity.fromJson(Map<String, dynamic> json) {
    return MovieEntity(
        idMovie: json['id'],
        voteAverageMovie: json['vote_average'],
        titleMovie: json['title'],
        posterUrlMovie: json['poster_url']);
  }
}
