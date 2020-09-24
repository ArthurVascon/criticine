import 'package:flutter/material.dart';

import './ui/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //Raiz do app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Criticine Demo',
      //Define o tema do app
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DashboardScreen(),
    );
  }
}
