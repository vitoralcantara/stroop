import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

class Statistics extends StatelessWidget {
  final redButtonStyle = ElevatedButton.styleFrom(
      fixedSize: const Size(160, 60), primary: Colors.red);

  final blueButtonStyle = ElevatedButton.styleFrom(
      fixedSize: const Size(160, 60), primary: Colors.blue);

  final greenButtonStyle = ElevatedButton.styleFrom(
      fixedSize: const Size(160, 60), primary: Colors.green);

  final buttonTextStyle = GoogleFonts.nunito(fontSize: 25.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: true, backgroundColor: Colors.black),
        backgroundColor: Colors.black,
        body: Center(
            child: Container(
                alignment: FractionalOffset.center,
                margin: EdgeInsets.only(top: 0),
                child: Column(children: <Widget>[
                  Text(
                    "Estatísticas",
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700,
                        fontSize: 30.0,
                        color: Colors.white),
                    maxLines: 2,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.blue),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => this,
                          ));
                    },
                    child: Text(
                      'Totais',
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
