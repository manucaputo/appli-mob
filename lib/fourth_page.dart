import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/home_page.dart';
import 'package:flutter_app/seventh_page.dart';
import 'package:flutter_app/sixth_page.dart';
import 'sixth_page.dart';
import 'fifth_page.dart';

// cette page permet l'affichage des différents niveaux
class FourthPage extends StatefulWidget {
  static const tag = "fourth_page";


  void main() {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      /* routes: {
            HomePage.tag: (context) => HomePage(),
         },
*/
      home: FourthPage(),
    ));
  }

  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  // définition des pramétres
  int value;
  int totalScore;
  List<String> list =[];

  @override
  Widget build(BuildContext context) {
    // les couleurs
    Color e = Color.fromRGBO(58, 153, 11, 1.0);
    Color b = Color.fromRGBO(255, 255, 132, 0.93);
    return Scaffold(
        backgroundColor: b, // couleur de fond
        appBar: AppBar( // défintion de la appBar
          leading: new IconButton(  // bouton qui permet de retourner à la HomePage
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          title: Text(
            'Entraine-toi !',
            style: TextStyle(fontSize: 35), // taille de la police
          ),
          centerTitle: true,
          backgroundColor: e, //couleur du text
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('assets/dragon_basique.png')), // image du dragon

            // bloc pour le bouton du niveau facile
            Flexible( // utilisation de Flexible et de Expanded pour que bouton s'adapte bien
                child: Row(children: <Widget>[
              Expanded(
                child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 0, 20.0, 0), //position par rapport aux autres éléments
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0), // arrondie les angles
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed(FifthPage.tag); // dirige vers la page FitfthPage
                      },
                      color: e, // couleur du bouton
                      padding:
                          EdgeInsets.symmetric(vertical: 20.0, horizontal: 15), // padding
                      child: AutoSizeText( //AutoSizeText pour que la taille du text s'adapte tout seul
                        'Niveau facile',
                        style: TextStyle( // style du text
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                ),
              )
            ])),

            // les 2 boutons suivant sont créés de la même façon
            Flexible(
                child: Row(children: <Widget>[
              Expanded(
                child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      onPressed: () {
                        value = 0;
                        totalScore = 0;
                        list=[];
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SeventhPage(
                            value: value,                  //passage des paramètres
                            totalScore: totalScore,
                            list: list,
                          ),
                        ));
                      },
                      color: e,
                      padding:
                          EdgeInsets.symmetric(vertical: 20.0, horizontal: 15),
                      child: AutoSizeText(
                        'Niveau moyen',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                ),
              )
            ])),
            Flexible(
                child: Row(children: <Widget>[
              Expanded(
                child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 2),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      onPressed: () {
                        value = 0;
                        totalScore = 0;
                        list=[];
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SixthPage(
                            value: value,          //passage des paramètres
                            totalScore: totalScore,
                            list: list,
                          ),
                        ));
                      },
                      color: e,
                      padding:
                          EdgeInsets.symmetric(vertical: 20.0, horizontal: 15),
                      child: AutoSizeText(
                        'Niveau difficile',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                ),
              )
            ]))
          ],
        ));
  }
}
