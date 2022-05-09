import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            centerTitle: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "Estatísticas",
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w700,
                      fontSize: 30.0,
                      color: Colors.white),
                  maxLines: 2,
                ),
              ],
            ),
            automaticallyImplyLeading: true,
            backgroundColor: Colors.black),
        backgroundColor: Colors.black,
        body: Center(
            child: Container(
                //alignment: FractionalOffset.center,
                margin: EdgeInsets.only(top: 0),
                child: Column(children: <Widget>[
                  Container(
                      alignment: Alignment.center,
                      height: 50,
                      margin: EdgeInsets.only(bottom: 10, top: 5),
                      width: MediaQuery.of(context).size.width / 1.05,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0)),
                          color: Color(0xff4886e8)),
                      child: Text('30 segundos',
                          style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 20.0))),
                  Container(
                      width: MediaQuery.of(context).size.width / 1.05,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(
                          left: 10, top: 5, bottom: 5, right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0)),
                          color: Color(0xff9fc5e8)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Número de acertos: 125',
                              style: GoogleFonts.nunito(fontSize: 20.0)),
                          Text('Número de erros: 24',
                              style: GoogleFonts.nunito(fontSize: 20.0)),
                          Text('Tempo médio de reação: 12s',
                              style: GoogleFonts.nunito(fontSize: 20.0)),
                        ],
                      )),
                  Spacer(flex: 4),
                ]))));
  }
}
