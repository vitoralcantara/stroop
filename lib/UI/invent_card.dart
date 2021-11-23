import 'package:flutter/material.dart';
import 'package:stroop/Models/global.dart';
import 'package:stroop/Models/invention.dart';
import 'package:stroop/Models/user.dart';

import 'invention_page.dart';

class InventCard extends StatelessWidget {
  final Invention invention;
  final User inventor;
  const InventCard({required this.invention, required this.inventor});
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
          margin: EdgeInsets.only(left: 15),
          constraints: BoxConstraints(maxHeight: 290),
          width: 180,
          decoration: BoxDecoration(
              color: blueColor,
              borderRadius: BorderRadius.all(Radius.circular(25)),
              boxShadow: [
                BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 5)
              ],
              gradient: RadialGradient(
                center: const Alignment(1.5, -0.9), // near the top right
                radius: 1.3,
                colors: [
                  const Color(0xFFFFFFFF), // yellow sun
                  const Color(0xFF12A4FF), // blue sky
                ],
                stops: [0.1, 1.0],
              )),
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(25.0),
              //side: BorderSide(color: Colors.red)
            ),
            child: Container(),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => InventionPage(invention: invention)),
              );
            },
          )),
      Container(
        padding: EdgeInsets.only(top: 20),
        width: 200,
        child: Column(children: <Widget>[
          Container(
            child: Image(
              image: invention.image!,
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(invention.name!, style: whiteTitle),
                  Text(inventor.firstName! + " " + inventor.lastName!,
                      style: whiteTitle)
                ],
              ))
        ]),
      )
    ]);
  }
}
