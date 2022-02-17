import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stroop/UI/statistics.dart';

import 'game_config_1.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

final redButtonStyle = ElevatedButton.styleFrom(
    fixedSize: const Size(160, 60), primary: Colors.red);

final blueButtonStyle = ElevatedButton.styleFrom(
    fixedSize: const Size(160, 60), primary: Colors.blue);

final greenButtonStyle = ElevatedButton.styleFrom(
    fixedSize: const Size(160, 60), primary: Colors.green);

final buttonTextStyle = GoogleFonts.nunito(fontSize: 25.0);

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            automaticallyImplyLeading: true, backgroundColor: Colors.black),
        body: Center(
            child: Container(
                alignment: FractionalOffset.center,
                margin: EdgeInsets.only(top: 40),
                //constraints: BoxConstraints.expand(width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height),
                child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Spacer(
                        flex: 2,
                      ),
                      Text(
                        "Efeito\nStroop",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w700,
                            fontSize: 56.0,
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
                                builder: (context) => GameConfig1(),
                              ));
                        },
                        child: Text(
                          'Jogar',
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
                                builder: (context) => Statistics(),
                              ));
                        },
                        child: Text('Estatísticas', style: buttonTextStyle),
                      ),
                      Spacer(),
                      ElevatedButton(
                        style: greenButtonStyle,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => About(),
                              ));
                        },
                        child: Text('Sobre', style: buttonTextStyle),
                      ),
                      Spacer(flex: 4),
                    ]))));
  }
}
