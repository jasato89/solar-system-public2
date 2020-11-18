import 'package:flutter/material.dart';

class PlanetProvider {

  List<Widget> planets = [];
  final Map<String, String> planetMap = {
    'Earth': 'earth.png',
    'Venus': 'venus.png',
    'Mercury': 'mercury.png',
    'Jupiter' : 'jupiter.png',
    'Mars' : 'mars.png',
    'Neptune': 'neptune.png',
    'Pluto' : 'pluto.png',
    'Sun' : 'sun.png',
    'Uranus': 'uranus.png',
  };




  Widget getAllPlanets() {

    return ListView.separated(
      itemCount: planetMap.length,
      separatorBuilder: (BuildContext context, int index) => Divider(
        height: 3,
        color: Colors.black,
      ),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Image.asset('resources/images/${planetMap.values.toList()[index]}'),
          title: Text('${planetMap.keys.toList()[index]}'),
          trailing: Text('>'),
        );
      });

  }

}