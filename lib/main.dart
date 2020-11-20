import 'package:flutter/material.dart';
import 'package:solar_system/planetProvider.dart';

void main() {
  runApp(SolarSystem());
}


class SolarSystem extends StatelessWidget {
  PlanetProvider provider = PlanetProvider();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: 'Solar System',
        home: Scaffold(
          body: provider.getAllPlanets(),
        ));
  }
}




