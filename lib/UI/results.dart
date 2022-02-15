import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

class Results extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: true, backgroundColor: Colors.black),
        backgroundColor: Colors.black,
        body: Center(
            child: Container(
                alignment: FractionalOffset.center,
                margin: EdgeInsets.only(top: 40),
                //constraints: BoxConstraints.expand(width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height),
                child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                        "Nova\nPartida",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w700,
                            fontSize: 50.0,
                            color: Colors.white),
                        maxLines: 2,
                      ),
                      Spacer(flex: 2),
                      ElevatedButton(
                        style: redButtonStyle,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => this,
                              ));
                        },
                        child: Text(
                          '15 segundos',
                          style: buttonTextStyle,
                        ),
                      ),
                      Spacer(),
                      ElevatedButton(
                        style: blueButtonStyle,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => (this),
                              ));
                        },
                        child: Text('30 segundos', style: buttonTextStyle),
                      ),
                      Spacer(),
                      ElevatedButton(
                        style: greenButtonStyle,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => (Main()),
                              ));
                        },
                        child: Text('1 minuto', style: buttonTextStyle),
                      ),
                      Spacer(flex: 4),
                    ]))));
  }
}
