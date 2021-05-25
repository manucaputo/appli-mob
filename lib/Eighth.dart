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

// cette page parmet d'afficher les corrections pour les erreurs
class EighthPage extends StatefulWidget {
  static const tag = "eighth_page";
  // les variables
  List<String> list =[];
  int totalScore;
  EighthPage({this.list, this.totalScore});

  void main() {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EighthPage(list: list, totalScore: totalScore,),
    ));
  }

  @override
  _EighthPageState createState() => _EighthPageState(list, totalScore);
}

class _EighthPageState extends State<EighthPage> {
  int value;
  int totalScore;
  List<String> list =[];
  String b;



  _EighthPageState(this.list, this.totalScore);

  @override
  Widget build(BuildContext context) {

    int final_score = 10 - totalScore;
    double d = list.length/3;
    int d2 = d.toInt();


    return Scaffold(

        backgroundColor: Colors.white.withOpacity(0.75), // couleur du fond

        appBar: AppBar( // la appBar
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FourthPage()), // renvoi à la page FourthPage
              );
            },
          ),
          title: Text(
            'Corrections',
            style: TextStyle(fontSize: 35), //style du texte
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),


        body: ListView(

          children: <Widget>[
            Row( // les 2 boutons sont sur la même ligne
              children: <Widget>[
                //bouton pour retourner au menu
                Expanded(
                    child: Container(
                        margin: new EdgeInsets.fromLTRB(  //position
                            15.0, 25.0, 15.0, 0),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0), //arrondie les angles
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 0),
                          textColor: Colors.white,
                          color: Colors.blue, // couleur du bouton
                          child: AutoSizeText(
                            'Retour',
                            maxLines: 1, // sur une ligne maximum
                            style: TextStyle( //style du texte
                              fontSize: 35,
                              color: Colors.white.withOpacity(0.9),
                            ),
                          ),
                          onPressed: () { // le bouton renvoi à la page FourthPage
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
                        padding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                        textColor: Colors.white,
                        color: Colors.blue,
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
                          totalScore=0;

                          list=[];
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
            Row(
                children: <Widget>[
                  Expanded(
                      child: Container(

                          margin: new EdgeInsets.fromLTRB(5.0, 15.0, 5, 0),
                          child: AutoSizeText('$d2' + ' erreurs :',         // affiche le nombre d'erreurs

                            maxLines: 1,
                            style: TextStyle( //style du texte
                                fontSize: 30,
                                decoration : TextDecoration.underline, //souligne le texte
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,  // centre le texte

                          )))]),

            for (var i=0; i<list.length-1; i=i+3) // boucle sur chaque erreur

                Row(
                        children: <Widget>[
                    Expanded(
                    child: Container(
                      margin: new EdgeInsets.fromLTRB(5.0, 20.0, 5, 2), // la position de chaque calcul par rapport aux autres
                      child: AutoSizeText(list[i] + ' x ' + list[i+1] + ' = ' + list[i+2] ,  //affiche la bonne réponse
                              maxLines: 1,
                              style: TextStyle( //style du texte
                                  fontSize: 30,

                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,

                        )))]),



          ],
        ));
  }
}
