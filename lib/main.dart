import 'package:flutter/material.dart';
import 'package:solar_system/planetProvider.dart';

void main() {
  runApp(SolarSystem());
}

class SolarSystem extends StatefulWidget {
  @override
  _SolarSystemState createState() => _SolarSystemState();
}

class _SolarSystemState extends State<SolarSystem> {

  PlanetProvider provider = PlanetProvider();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Solar System',
        home: Scaffold(
          body: provider.getAllPlanets(),
        ));
  }
}
