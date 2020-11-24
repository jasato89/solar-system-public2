import 'package:flutter/material.dart';
import 'package:solar_system/detailView.dart';
import 'package:solar_system/planet.dart';
import 'package:solar_system/planetProvider.dart';
import 'package:strings/strings.dart';

void main() {
  runApp(SolarSystem());
}


class SolarSystem extends StatelessWidget {
  PlanetProvider provider = PlanetProvider();

  @override
  Widget build(BuildContext context) {
    List<Planet> planets = provider.getPlanets();


    return MaterialApp(
        initialRoute: '/',
        routes: {
          '/detailView': (context) => DetailView(),
        },
        title: 'Solar System',
        home: Scaffold(
    body: ListView.separated(
    itemCount: planets.length,
        separatorBuilder: (BuildContext context, int index) =>
            Divider(
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
              Navigator.pushNamed(context, '/detailView', arguments: planets[index]);
            },
          );
        })
      )
    );
  }
}




