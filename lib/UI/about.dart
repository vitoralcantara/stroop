import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(backgroundColor: blueColor, elevation: 0),
        body: Container(
      decoration: BoxDecoration(
          gradient: RadialGradient(
        center: const Alignment(1.5, -0.9), // near the top right
        radius: 1.3,
        colors: [
          const Color(0xFFFFFFFF), // yellow sun// blue sky
        ],
        stops: [0.1, 1.0],
      )),
      child: Center(
          child: Container(
              child: Column(children: <Widget>[
        Container(
            constraints: BoxConstraints.expand(height: 120),
            child: Row(children: <Widget>[
              TextButton(
                  child: Icon(Icons.arrow_back_ios, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  })
            ])),
      ]))),
    ));
  }
}
