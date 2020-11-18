import 'package:flutter/material.dart';

class PlanetProvider {

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

  List<int> distance = [149, 108, 57, 780, 228, 4530, 5934, 0, 2871];




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
          subtitle: Text('${distance[index]} millions of kms to the Sun'),
          trailing: Icon(Icons.keyboard_arrow_right),
          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          dense: true,
        );
      });

  }

}