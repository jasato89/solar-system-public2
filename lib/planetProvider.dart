import 'package:flutter/material.dart';
import 'package:solar_system/detailView.dart';
import 'package:solar_system/planet.dart';
import 'package:strings/strings.dart';

class PlanetProvider {
  List<Planet> planets = [
    Planet("earth", "earth.png", 149, "Earth—our home planet—is the only place we know of so far that’s inhabited by living things. It's also the only planet in our solar system with liquid water on the surface."),
    Planet("venus", "venus.png", 108, "Venus spins slowly in the opposite direction from most planets. A thick atmosphere traps heat in a runaway greenhouse effect, making it the hottest planet in our solar system."),
    Planet("mercury", "mercury.png", 57, "Mercury—the smallest planet in our solar system and closest to the Sun—is only slightly larger than Earth's Moon. Mercury is the fastest planet, zipping around the Sun every 88 Earth days."),
    Planet("jupiter", "jupiter.png", 780, "Jupiter is more than twice as massive than the other planets of our solar system combined. The giant planet's Great Red spot is a centuries-old storm bigger than Earth."),
    Planet("mars", "mars.png", 228, "Mars is a dusty, cold, desert world with a very thin atmosphere. There is strong evidence Mars was—billions of years ago—wetter and warmer, with a thicker atmosphere."),
    Planet("neptune", "neptune.png", 4530, "Neptune—the eighth and most distant major planet orbiting our Sun—is dark, cold and whipped by supersonic winds. It was the first planet located through mathematical calculations, rather than by telescope."),
    Planet("uranus", "uranus.png", 2871, "Uranus—seventh planet from the Sun—rotates at a nearly 90-degree angle from the plane of its orbit. This unique tilt makes Uranus appear to spin on its side.")
  ];

  Widget getAllPlanets() {
    return ListView.separated(
        itemCount: planets.length,
        separatorBuilder: (BuildContext context, int index) => Divider(
          height: 3,
          color: Colors.black,
        ),
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailView(planets[index]),));
            },
          );
        });
  }


}
