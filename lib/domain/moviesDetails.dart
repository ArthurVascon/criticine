import 'package:criticine/data/moviesEntity.dart';
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
          width: 250.0,
          height: 270.0,
          decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            image: DecorationImage(
              image: new NetworkImage(posterUrlMovie),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          left: 140.0,
          top: 70.0,
          child: Material(
              color: Colors.white,
              elevation: 14.0,
              borderRadius: BorderRadius.circular(24.0),
              shadowColor: Color(0x802196F3),
              child: Container(
                width: 230.0,
                height: 150.0,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Container(
                        child: Center(
                            child: Text(titleMovie,
                                style: TextStyle(
                                    color: Color(0xff07128a),
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold))),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(voteAverageRate.toString() + " rate",
                            style: TextStyle(
                                color: Color(0xffff6f00), fontSize: 16.0)),
                        IconButton(
                            icon: Icon(
                              Icons.chevron_right,
                              color: Color(0xffff6f00),
                            ),
                            onPressed: () {
                              //Goto -> Movie Detail Page
                            }),
                      ],
                    )),
                  ],
                ),
              )),
        ),
      ]),
    );
  }
}
