import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/home_page.dart';
import 'package:flutter_app/seventh_page.dart';
import 'package:flutter_app/sixth_page.dart';
import 'sixth_page.dart';
import 'fifth_page.dart';

// cette page permet l'affichage du menu des différents niveaux
class FourthPage extends StatefulWidget {
  static const tag = "fourth_page"; // nom de la page

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
  // définitions des paramètres
  int value;
  int totalScore;
  List<String> list = [];

  @override
  Widget build(BuildContext context) {
    // les couleurs
    Color a = Color.fromRGBO(201, 243, 167, 1.0);
    Color e = Color.fromRGBO(84, 125, 42, 1.0);
    Color b = Color.fromRGBO(255, 255, 132, 0.93);
    return Scaffold(
        backgroundColor: b, // couleur du fond
        appBar: AppBar(
          // défintion de la appBar
          leading: new IconButton(
            // bouton qui permet de retourner à la "HomePage"
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
          mainAxisAlignment: MainAxisAlignment.center, //pour aligner au centre
          children: <Widget>[
            Image(
                image:
                    AssetImage('assets/dragon_basique.png')), // image du dragon

            // bloc pour le bouton du niveau "facile"
            Flexible(
                // utilisation de "Flexible" et de "Expanded" pour que le bouton s'adapte bien
                child: Row(children: <Widget>[
              Expanded(
                child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 0, 20.0,
                      0), //position par rapport aux autres éléments
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(
                          color: e, width: 8.0)), // permet d'encadrer le bouton
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8.0), // arrondir les angles
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed(
                            FifthPage.tag); // dirige vers la page "FitfthPage"
                      },
                      color: a, // couleur du bouton
                      padding: EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 15), // padding
                      child: AutoSizeText(
                        //AutoSizeText pour que la taille du text s'adapte toute seule
                        'Niveau facile',
                        style: TextStyle(
                          // style du text
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: e,
                        ),
                      )),
                ),
              )
            ])),

            // les 2 boutons suivants sont créés de la même façon, seul le passage de paramétre change
            Flexible(
                child: Row(children: <Widget>[
              Expanded(
                child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: e, width: 8.0)),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      onPressed: () {
                        value = 0;
                        totalScore = 0;
                        list = [];
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SeventhPage(
                            value: value, //passage des paramètres
                            totalScore: totalScore,
                            list: list,
                          ),
                        ));
                      },
                      color: a,
                      padding:
                          EdgeInsets.symmetric(vertical: 20.0, horizontal: 15),
                      child: AutoSizeText(
                        'Niveau moyen',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: e,
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
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: e, width: 8.0)),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      onPressed: () {
                        value = 0;
                        totalScore = 0;
                        list = [];
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SixthPage(
                            value: value, //passage des paramètres
                            totalScore: totalScore,
                            list: list,
                          ),
                        ));
                      },
                      color: a,
                      padding:
                          EdgeInsets.symmetric(vertical: 20.0, horizontal: 15),
                      child: AutoSizeText(
                        'Niveau difficile',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: e,
                        ),
                      )),
                ),
              )
            ]))
          ],
        ));
  }
}
