import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stroop/UI/game.dart';

class GameConfig2 extends StatelessWidget {
  final redButtonStyle = ElevatedButton.styleFrom(
      fixedSize: const Size(160, 60), primary: Colors.red);

  final blueButtonStyle = ElevatedButton.styleFrom(
      fixedSize: const Size(160, 60), primary: Colors.blue);

  final greenButtonStyle = ElevatedButton.styleFrom(
      fixedSize: const Size(160, 60), primary: Colors.green);

  final buttonTextStyle = GoogleFonts.nunito(fontSize: 22.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        flex: 2,
                      ),
                      Text(
                        "Modo",
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
                                builder: (context) => Game(),
                              ));
                        },
                        child: Text(
                          'Tempo',
                          textAlign: TextAlign.center,
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
                                builder: (context) => (Game()),
                              ));
                        },
                        child: Text('Número de estímulos',
                            textAlign: TextAlign.center,
                            style: buttonTextStyle),
                      ),
                      Spacer(flex: 4),
                      ElevatedButton(
                        style: greenButtonStyle,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => (Game()),
                              ));
                        },
                        child: Text('Começar',
                            textAlign: TextAlign.center,
                            style: buttonTextStyle),
                      ),
                      Spacer(),
                    ]))));
  }
}
