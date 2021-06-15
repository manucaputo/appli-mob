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

// cette page permet d'afficher les corrections pour les erreurs du niveau difficle
class EighthPage extends StatefulWidget {
  static const tag = "eighth_page";
  // les variables
  List<String> list = [];
  int totalScore;
  EighthPage({this.list, this.totalScore});

  void main() {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EighthPage(
        list: list,
        totalScore: totalScore,
      ),
    ));
  }

  @override
  _EighthPageState createState() => _EighthPageState(list, totalScore);
}

class _EighthPageState extends State<EighthPage> {
  int value;
  int totalScore;
  List<String> list = [];
  String b;

  _EighthPageState(this.list, this.totalScore);

  @override
  Widget build(BuildContext context) {
    int final_score = 10 - totalScore;
    double d = list.length / 3;
    int d2 = d.toInt();

    // les couleurs possibles
    Color e = Color.fromRGBO(124, 179, 74, 1.0);
    Color f = Color.fromRGBO(84, 125, 42, 1.0);
    Color c = Color.fromRGBO(99, 172, 57, 1.0);
    Color a = Color.fromRGBO(201, 243, 167, 1.0);

    Color b = Color.fromRGBO(255, 255, 132, 0.93);
    Color g = Color.fromRGBO(132, 69, 60, 1);

    return Scaffold(
        backgroundColor: a, // couleur du fond

        appBar: AppBar(
          // la appBar
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        FourthPage()), // renvoi à la page FourthPage
              );
            },
          ),
          title: Text(
            'Corrections',
            style: TextStyle(fontSize: 35), //style du texte
          ),
          centerTitle: true,
          backgroundColor: c,
        ),
        body: ListView(  // lorsque l'écran est trop petit on peut scroller pour descendre
          children: <Widget>[
            Row(
              // les 2 boutons sont sur la même ligne
              children: <Widget>[
                //bouton pour retourner au menu avec Expanded pour que la taille s'adapte tout seul à la taille de l'écran
                Expanded(
                    child: Container(
                        margin: new EdgeInsets.fromLTRB(
                            //position
                            15.0,
                            25.0,
                            15.0,
                            0),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                15.0), //arrondie les angles
                          ),
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 0), // le padding
                          textColor: Colors.white,
                          color: c, // couleur du bouton
                          child: AutoSizeText(
                            'Retour',
                            maxLines: 1, // sur une ligne maximum
                            style: TextStyle(
                              //style du texte
                              fontSize: 35,
                              color: Colors.white.withOpacity(0.9),
                            ),
                          ),
                          onPressed: () {
                            // le bouton renvoi à la page FourthPage
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => FourthPage(),
                            ));
                          },
                        ))),
                //Bouton pour recommencer , identique au précédent, juste la direction change
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
                        builder: (context) => SixthPage(
                          value: value,
                          totalScore: totalScore,
                          list: list,
                        ),
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
                        '$d2' + ' erreurs :', // affiche le nombre d'erreurs

                        maxLines: 1,  // 1 ligne maximum pour chaque calcul
                        style: TextStyle(
                            //style du texte
                            fontSize: 30,
                            decoration:
                                TextDecoration.underline, //souligne le texte
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center, // centre le texte
                      )))
            ]),
            for (var i = 0;
                i < list.length - 1;
                i = i + 3) // boucle sur chaque erreur

              Row(children: <Widget>[
                Expanded(
                    child: Container(
                        margin: new EdgeInsets.fromLTRB(5.0, 20.0, 5,
                            2), // la position de chaque calcul par rapport aux autres
                        child: AutoSizeText(
                          list[i] +
                              ' x ' +
                              list[i + 1] +
                              ' = ' +
                              list[i + 2], //affiche le calcul avec la bonne réponse
                          maxLines: 1, // sur une ligne maximum
                          style: TextStyle(
                              //style du texte
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
