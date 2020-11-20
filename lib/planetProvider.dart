import 'package:flutter/material.dart';
import 'package:solar_system/detailView.dart';
import 'package:solar_system/planet.dart';
import 'package:strings/strings.dart';

class PlanetProvider {
  List<Planet> planets = [
    Planet("earth", "earth.png", 149),
    Planet("venus", "venus.png", 108),
    Planet("mercury", "mercury.png", 57),
    Planet("jupiter", "jupiter.png", 780),
    Planet("mars", "mars.png", 228),
    Planet("neptune", "neptune.png", 4530),
    Planet("uranus", "uranus.png", 2871)
  ];

  Widget getAllPlanets() {
    return ListView.separated(
        itemCount: planets.length,
        separatorBuilder: (BuildContext context, int index) {
          if (index % 2 == 0) {
            return Divider(
              height: 6,
              color: Colors.black,
            );
          } else {
            return Divider(
              height: 3,
              color: Colors.red,
            );
          }
        },
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.asset('resources/images/${planets[index].image}'),
            title: Text('${capitalize(planets[index].name)}'),
            subtitle:
                Text('${planets[index].distance} millions of kms to the Sun'),
            trailing: Icon(Icons.keyboard_arrow_right),
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            dense: true,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailView(),));
            },
          );
        });
  }


}
