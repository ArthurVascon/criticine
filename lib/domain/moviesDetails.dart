import 'package:criticine/data/moviesEntity.dart';
import 'package:criticine/presentation/moviesDetailsScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoviesDetails extends StatelessWidget {
  MovieEntity index;
  String titleMovie;
  String posterUrlMovie;
  double voteAverageRate;
  MoviesDetails(
      this.index, this.titleMovie, this.posterUrlMovie, this.voteAverageRate);

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(children: <Widget>[
        Container(
          width: 200,
          height: 298,
          child: Card(
            elevation: 5,
            child: Column(
              children: <Widget>[
                Image.network(posterUrlMovie,
                    fit: BoxFit.fill, repeat: ImageRepeat.repeatY,
                    errorBuilder: (context, error, stackTrace) {
                  posterUrlMovie =
                      'https://lh3.googleusercontent.com/proxy/lkAPEX89621AlfkndcJJewG43WfzvDNCVC4pTBZFDcO84rQVDN3Z0oNXUwLHX-3ZsNCyI5fDeQyf5_nuw2y674vxcz2ylJgtjUuHLRnBcgLMuw';
                  return Image.network(
                    posterUrlMovie,
                  );
                })
              ],
            ),
          ),
        ),
        Positioned(
          left: 140.0,
          top: 70.0,
          child: Material(
              color: Colors.white,
              elevation: 14.0,
              borderRadius: BorderRadius.all(Radius.circular(24)),
              shadowColor: Color(0x802196F3),
              child: Container(
                width: 230.0,
                height: 160.0,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Container(
                        child: Center(
                            child: Text(
                          titleMovie,
                          maxLines: 1,
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Nota: " + voteAverageRate.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 20.0)),
                      ],
                    )),
                    SizedBox(height: 6.0),
                    Container(
                      color: Theme.of(context).primaryColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          // IconButton(
                          //   icon: Icon(Icons.info_outline),
                          //   color: Colors.white,
                          //   onPressed: () {},
                          // ),
                          IconButton(
                              splashRadius: 0.2,
                              padding: EdgeInsets.only(
                                left: 80,
                                right: 80,
                              ),
                              icon: Icon(
                                Icons.info_outline,
                                color: Colors.white,
                                size: 30.0,
                              ),
                              onPressed: () {
                                Navigator.of(context).pushNamed(
                                    MoviesDetailsScreen.routeName,
                                    arguments: {
                                      'id': index.toString(),
                                      'voteAverageRate':
                                          voteAverageRate.toString(),
                                      'titleMovie': titleMovie.toString(),
                                      'posterUrlMovie':
                                          posterUrlMovie.toString()
                                    });
                              })
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ),
      ]),
    );
  }
}
