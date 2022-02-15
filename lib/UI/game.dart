import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Game extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final redButtonStyle = ElevatedButton.styleFrom(
        fixedSize: Size(MediaQuery
            .of(context)
            .size
            .width / 3,
            MediaQuery
                .of(context)
                .size
                .width / 3));
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
                        "",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w700,
                            fontSize: 55.0,
                            color: Colors.white),
                        maxLines: 2,
                      ),
                      Spacer(flex: 2),
                      Row(
                        children: [
                          Spacer(),
                          ElevatedButton(
                            style: redButtonStyle,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Game(),
                                  ));
                            },
                            child: Text(''),
                          ),
                          Spacer(),
                          ElevatedButton(
                            style: redButtonStyle,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Game(),
                                  ));
                            },
                            child: Text(''),
                          ),
                          Spacer(),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Spacer(),
                          ElevatedButton(
                              style: redButtonStyle,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => (Game()),
                                    ));
                              },
                              child: Text('')),
                          Spacer(flex: 1),
                          ElevatedButton(
                            style: redButtonStyle,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => (Game()),
                                  ));
                            },
                            child: Text(''),
                          ),
                          Spacer(),
                        ],
                      ),
                      Spacer(flex: 4),
                    ]))));
  }
}
