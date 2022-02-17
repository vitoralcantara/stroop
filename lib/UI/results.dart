import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stroop/UI/game.dart';

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
                //constraints: BoxConstraints.expand(width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height),
                child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "Resultado",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w700,
                            fontSize: 30.0,
                            color: Colors.white),
                        maxLines: 2,
                      ),
                      Spacer(),
                      Text(
                        "Número de acertos",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w700,
                            fontSize: 30.0,
                            color: Colors.grey),
                      ),
                      Spacer(),
                      Text(
                        "125",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w700,
                            fontSize: 50.0,
                            color: Colors.blue),
                      ),
                      Spacer(),
                      Text(
                        "Número de erros",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w700,
                            fontSize: 30.0,
                            color: Colors.grey),
                      ),
                      Spacer(),
                      Text(
                        "24",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w700,
                            fontSize: 50.0,
                            color: Colors.red),
                      ),
                      Spacer(),
                      Text(
                        "Tempo médio de reação",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w700,
                            fontSize: 30.0,
                            color: Colors.grey),
                      ),
                      Spacer(),
                      Text(
                        "12 seg",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w700,
                            fontSize: 50.0,
                            color: Colors.green),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Spacer(),
                          ElevatedButton(
                            style: blueButtonStyle,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Game(),
                                  ));
                            },
                            child: Text(
                              'Repetir',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.nunito(fontSize: 20),
                            ),
                          ),
                          Spacer(),
                          ElevatedButton(
                            style: greenButtonStyle,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Main(),
                                  ));
                            },
                            child: Text(
                              'Voltar ao início',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.nunito(fontSize: 20),
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                      Spacer(),
                    ]))));
  }
}
