import 'dart:ffi';
import 'dart:math';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/home_page.dart';
import 'package:flutter_app/seventh_page.dart';
import 'package:flutter_app/sixth_page.dart';
import 'fourth_page.dart';
import 'sixth_page.dart';
import 'fifth_page.dart';

// identique au fichier Eighth , sauf les directions qui sont pour le niveau facile
class EighthfacilePage extends StatefulWidget {
  static const tag = "eighth_page";
  List<String> list = [];
  int totalScore;
  EighthfacilePage({this.list, this.totalScore});

  void main() {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EighthfacilePage(
        list: list,
        totalScore: totalScore,
      ),
    ));
  }

  @override
  _EighthfacilePageState createState() =>
      _EighthfacilePageState(list, totalScore);
}

class _EighthfacilePageState extends State<EighthfacilePage> {
  int value;
  int totalScore;
  List<String> list = [];
  String b;

  _EighthfacilePageState(this.list, this.totalScore);

  @override
  Widget build(BuildContext context) {
    int final_score = 10 - totalScore;
    double d = list.length / 3;
    int d2 = d.toInt();

    Color e = Color.fromRGBO(124, 179, 74, 1.0);
    Color f = Color.fromRGBO(84, 125, 42, 1.0);
    Color c = Color.fromRGBO(99, 172, 57, 1.0);
    Color a = Color.fromRGBO(201, 243, 167, 1.0);

    Color b = Color.fromRGBO(255, 255, 132, 0.93);
    Color h = Color.fromRGBO(132, 69, 60, 1);

    return Scaffold(
        backgroundColor: a,
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FourthPage()),
              );
            },
          ),
          title: Text(
            'Corrections',
            style: TextStyle(fontSize: 35),
          ),
          centerTitle: true,
          backgroundColor: c,
        ),
        body: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                        margin: new EdgeInsets.fromLTRB(15.0, 25.0, 15.0, 0),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                          textColor: Colors.white,
                          color: c,
                          child: AutoSizeText(
                            'Retour',
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white.withOpacity(0.9),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => FourthPage(),
                            ));
                          },
                        ))),
                Expanded(
                    child: Container(
                  margin: new EdgeInsets.fromLTRB(15.0, 25.0, 15.0, 2.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                    textColor: Colors.white,
                    color: c,
                    child: AutoSizeText(
                      'Nouveau',
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white.withOpacity(0.9),
                      ),
                    ),
                    onPressed: () {
                      value = 0;
                      totalScore = 0;

                      list = [];
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FifthPage(),
                      ));
                    },
                  ),
                )),
              ],
            ),
            Row(children: <Widget>[
              Expanded(
                  child: Container(
                      margin: new EdgeInsets.fromLTRB(5.0, 15.0, 5, 0),
                      child: AutoSizeText(
                        '$d2' + ' erreurs :',
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 30,
                            decoration: TextDecoration.underline,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )))
            ]),
            for (var i = 0; i < list.length - 1; i = i + 3)
              Row(children: <Widget>[
                Expanded(
                    child: Container(
                        margin: new EdgeInsets.fromLTRB(5.0, 20.0, 5, 2),
                        child: AutoSizeText(
                          list[i] + ' x ' + list[i + 1] + ' = ' + list[i + 2],
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )))
              ]),
          ],
        ));
  }
}
