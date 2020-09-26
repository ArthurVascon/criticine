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
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24.0),
                  topRight: Radius.circular(24.0)),
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
                            child: Text(titleMovie,
                                style: TextStyle(
                                    color: Color(0xff07128a),
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold))),
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
                                color: Color(0xffff6f00), fontSize: 20.0)),
                      ],
                    )),
                    SizedBox(height: 6.0),
                    Container(
                      color: Color(0xEFFF6F00),
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
                                //Goto -> Movrie Detail Page
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
