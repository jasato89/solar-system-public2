import 'package:flutter/material.dart';
import 'package:solar_system/planet.dart';
import 'package:strings/strings.dart';

class DetailView extends StatelessWidget {
  Planet planet;

  DetailView(this.planet);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: planet.name,
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('resources/images/IMG_0010.PNG'),
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.4), BlendMode.srcOver),
                fit: BoxFit.cover)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.black87,
              leading: TextButton(
                child: Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: Text(capitalize(planet.name)),
              centerTitle: true,
            ),
            body: Column(children: [
              Container(
                child: Image.asset(
                  'resources/images/${planet.image}',
                  width: 200.0,
                ),
                margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
              ),
              Container(
                child: Text(capitalize(planet.name),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48.0,
                    )),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                color: Colors.black87,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
              ),
              Container(
                child: Text(planet.description,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    )),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                color: Colors.black87,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
              ),
            ])),
      ),
    );
  }
}
