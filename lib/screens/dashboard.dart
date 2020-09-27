import 'package:criticine/model/moviesEntity.dart';
import 'package:criticine/widgets/moviesDetails.dart';
import 'package:flutter/material.dart';
import '../data/moviesService.dart';
import 'package:http/http.dart' as http;

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Criticine App'),
        ),
        //Montagem da lista através dos dados adquiridos pelo future.
        body: FutureBuilder<List<MovieEntity>>(
          future: fetchMovies(http.Client()),
          builder: (context, snapshot) {
            //Se tiver erro ao pegar os dados, dispara isso.
            if (snapshot.hasError) {}
            return snapshot.hasData
                ? MoviesList(movies: snapshot.data)
                : Center(child: CircularProgressIndicator());
          },
        ));
  }
}

class MoviesList extends StatelessWidget {
  final List<MovieEntity> movies;

  MoviesList({Key key, this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Listagem em Grid dos filmes
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
      ),
      itemCount: movies.length,
      itemBuilder: (context, index) {
        return MoviesDetails(movies[index], movies[index].titleMovie,
            movies[index].posterUrlMovie, movies[index].voteAverageMovie);
      },
    );
  }
}
