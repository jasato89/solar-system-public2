import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //TODO: Terminar de rellenar el Map para que contenga todos los planetas.
  final Map<String, String> planets = {'earth': 'earth.png', 'venus': 'venus.png', 'mercury' : 'mercury.png'};

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solar System',

      home: Container(),
    );
  }
}




