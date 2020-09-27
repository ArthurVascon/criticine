import 'package:criticine/data/moviesEntity.dart';
import 'package:criticine/domain/moviesDetails.dart';
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
        body: FutureBuilder<List<MovieEntity>>(
          future: fetchMovies(http.Client()),
          builder: (context, snapshot) {
            if (snapshot.hasError) {}
            return snapshot.hasData
                ? MoviesList(movies: snapshot.data)
                : Center(child: CircularProgressIndicator());
          },
          //Column(
          //   children: <Widget>[
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: <Widget>[
          //         Text('Recomendados',
          //             style: TextStyle(
          //               fontSize: 19,
          //               fontWeight: FontWeight.bold,
          //             )),
          //         FlatButton(
          //           child: Text('Mostrar todos'),
          //           onPressed: () {},
          //         )
          //       ],
          //     ),

          // Container(
          //   child: ListView(
          //     children: <Widget>[
          //       Column(
          //         children: <Widget>[
          //           Container(
          //             height: 200,
          //             width: double.infinity,
          //           )
          //         ],
          //       )
          //     ],
          //   ),
          // )
          //   ],
          // )
        ));
  }
}

class MoviesList extends StatelessWidget {
  final List<MovieEntity> movies;

  MoviesList({Key key, this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
