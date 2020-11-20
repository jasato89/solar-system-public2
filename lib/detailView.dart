import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Details',
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.keyboard_arrow_left),
          title: Text('Planet Details'), centerTitle: true,
        ),
      body: Image.asset("resources/images/mars.png")),
    );
  }
}
