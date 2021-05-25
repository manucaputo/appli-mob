import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

// page pour afficher la table choisie
class ThirdPage extends StatefulWidget {
  int value; // la valeur de la table choisie
  ThirdPage({this.value});
  static const tag = "third_page";

  void main() {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ThirdPage(value: value),
    ));
  }

  @override
  _ThirdPageState createState() => _ThirdPageState(value);
}

class _ThirdPageState extends State<ThirdPage> {
  int value;
  // définition des différentes couleur
  Color b = Color.fromRGBO(255, 255, 132, 0.93);
  Color a = Color.fromRGBO(201, 243, 167, 1.0);
  Color c = Color.fromRGBO(147, 219, 91, 0.6);
  Color d = Color.fromRGBO(255, 0, 0, 0.7);
  Color f = Color.fromRGBO(100, 156, 40, 1.0);

  _ThirdPageState(this.value);

  @override
  Widget build(BuildContext context) {
    if (value == 1) { // table 1
      return Scaffold(
          backgroundColor: a,
          appBar: AppBar(  // définition de la AppBAr
            title: Text(
              'Table de 1', // texte de la AppBar
              style: TextStyle(fontSize: 35),
            ),
            centerTitle: true, //titre centré
            backgroundColor: f, // couleur du titre
          ),
          body: Center(
            child: Stack(children: <Widget>[ // Stack va permettre d'utiliser l'image comme fond et d'écrire dessus
              Container(
                  margin: new EdgeInsets.fromLTRB(0, 0, 0, 0), // position de l'image
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/bulle2.png'), // lien pour l'image
                      fit: BoxFit.fill,  // affiche l'image en fond
                    ),
                  )),
              Container(
                /*decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: Colors.blueGrey, width: 7.0)),*/
                margin: new EdgeInsets.fromLTRB(165, 45, 10, 0),
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20), // position de l'écriture de la table
                //color: Colors.black.withOpacity(0.15),
                child: AutoSizeText(
                  '0 x 1 = 0\n1 x 1 = 1\n2 x 1 = 2\n3 x 1 = 3\n4 x 1 = 4\n5 x 1 = 5\n6 x 1 = 6\n7 x 1 = 7\n8 x 1 = 8\n9 x 1 = 9\n10 x 1 = 10', //écriture de la table
                  textAlign: TextAlign.center, // permet de centrer le text
                  maxLines: 11, // nombre maximum de ligne à 11
                  style: TextStyle( // style du tex
                      fontSize: 35,
                      color: Colors.black.withOpacity(1),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
          ));
    } else if (value == 2) {  // méthode identique pour les autres tables
      return Scaffold(
          backgroundColor: Colors.white.withOpacity(0.75),
          appBar: AppBar(
            title: Text(
              'Table de 2',
              style: TextStyle(fontSize: 35),
            ),
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                  child: Row(children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Colors.blueGrey, width: 7.0)),
                  margin: new EdgeInsets.fromLTRB(110, 15, 0, 0),
                  padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
                  color: Colors.black.withOpacity(0.15),
                  child: Text(
                    '0 x 2 = 0\n\n1 x 2 = 2\n\n2 x 2 = 4\n\n3 x 2 = 6\n\n4 x 2 = 8\n\n5 x 2 = 10\n\n6 x 2 = 12\n\n7 x 2 = 14\n\n8 x 2 = 16\n\n9 x 2 = 18\n\n10 x 2 = 20',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black.withOpacity(1),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ]))
            ],
          ));
    } else if (value == 3) {
      return Scaffold(
          backgroundColor: Colors.white.withOpacity(0.75),
          appBar: AppBar(
            title: Text(
              'Table de 3',
              style: TextStyle(fontSize: 35),
            ),
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                  child: Row(children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Colors.blueGrey, width: 7.0)),
                  margin: new EdgeInsets.fromLTRB(110, 15, 0, 0),
                  padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
                  color: Colors.black.withOpacity(0.15),
                  child: Text(
                    '0 x 3 = 0\n\n1 x 3 = 3\n\n2 x 3 = 6\n\n3 x 3 = 9\n\n4 x 3 = 12\n\n5 x 3 = 15\n\n6 x 3 = 18\n\n7 x 3 = 21\n\n8 x 3 = 24\n\n9 x 3 = 27\n\n10 x 3 = 30',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black.withOpacity(1),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ]))
            ],
          ));
    } else if (value == 4) {
      return Scaffold(
          backgroundColor: Colors.white.withOpacity(0.75),
          appBar: AppBar(
            title: Text(
              'Table de 4',
              style: TextStyle(fontSize: 35),
            ),
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                  child: Row(children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Colors.blueGrey, width: 7.0)),
                  margin: new EdgeInsets.fromLTRB(110, 15, 0, 0),
                  padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
                  color: Colors.black.withOpacity(0.15),
                  child: Text(
                    '0 x 4 = 0\n\n1 x 4 = 4\n\n2 x 4 = 8\n\n3 x 4 = 12\n\n4 x 4 = 16\n\n5 x 4 = 20\n\n6 x 4 = 24\n\n7 x 4 = 28\n\n8 x 4 = 32\n\n9 x 4 = 36\n\n10 x 4 = 40',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black.withOpacity(1),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ]))
            ],
          ));
    } else if (value == 5) {
      return Scaffold(
          backgroundColor: Colors.white.withOpacity(0.75),
          appBar: AppBar(
            title: Text(
              'Table de 5',
              style: TextStyle(fontSize: 35),
            ),
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                  child: Row(children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Colors.blueGrey, width: 7.0)),
                  margin: new EdgeInsets.fromLTRB(110, 15, 0, 0),
                  padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
                  color: Colors.black.withOpacity(0.15),
                  child: Text(
                    '0 x 5 = 0\n\n1 x 5 = 5\n\n2 x 5 = 10\n\n3 x 5 = 15\n\n4 x 5 = 20\n\n5 x 5 = 25\n\n6 x 5 = 30\n\n7 x 5 = 35\n\n8 x 5 = 40\n\n9 x 5 = 45\n\n10 x 5 = 50',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black.withOpacity(1),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ]))
            ],
          ));
    } else if (value == 6) {
      return Scaffold(
          backgroundColor: Colors.white.withOpacity(0.75),
          appBar: AppBar(
            title: Text(
              'Table de 6',
              style: TextStyle(fontSize: 35),
            ),
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                  child: Row(children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Colors.blueGrey, width: 7.0)),
                  margin: new EdgeInsets.fromLTRB(110, 15, 0, 0),
                  padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
                  color: Colors.black.withOpacity(0.15),
                  child: Text(
                    '0 x 6 = 0\n\n1 x 6 = 6\n\n2 x 6 = 12\n\n3 x 6 = 18\n\n4 x 6 = 24\n\n5 x 6 = 30\n\n6 x 6 = 36\n\n7 x 6 = 42\n\n8 x 6 = 48\n\n9 x 6 = 54\n\n10 x 6 = 60',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black.withOpacity(1),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ]))
            ],
          ));
    } else if (value == 7) {
      return Scaffold(
          backgroundColor: Colors.white.withOpacity(0.75),
          appBar: AppBar(
            title: Text(
              'Table de 7',
              style: TextStyle(fontSize: 35),
            ),
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                  child: Row(children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Colors.blueGrey, width: 7.0)),
                  margin: new EdgeInsets.fromLTRB(110, 15, 0, 0),
                  padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
                  color: Colors.black.withOpacity(0.15),
                  child: Text(
                    '0 x 7 = 0\n\n1 x 7 = 7\n\n2 x 7 = 14\n\n3 x 7 = 21\n\n4 x 7 = 28\n\n5 x 7 = 35\n\n6 x 7 = 42\n\n7 x 7 = 49\n\n8 x 7 = 56\n\n9 x 7 = 63\n\n10 x 7 = 70',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black.withOpacity(1),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ]))
            ],
          ));
    } else if (value == 8) {
      return Scaffold(
          backgroundColor: Colors.white.withOpacity(0.75),
          appBar: AppBar(
            title: Text(
              'Table de 8',
              style: TextStyle(fontSize: 35),
            ),
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                  child: Row(children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Colors.blueGrey, width: 7.0)),
                  margin: new EdgeInsets.fromLTRB(110, 15, 0, 0),
                  padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
                  color: Colors.black.withOpacity(0.15),
                  child: Text(
                    '0 x 8 = 0\n\n1 x 8 = 8\n\n2 x 8 = 16\n\n3 x 8 = 24\n\n4 x 8 = 32\n\n5 x 8 = 40\n\n6 x 8 = 48\n\n7 x 8 = 56\n\n8 x 8 = 64\n\n9 x 8 = 72\n\n10 x 8 = 80',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black.withOpacity(1),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ]))
            ],
          ));
    } else if (value == 9) {
      return Scaffold(
          backgroundColor: Colors.white.withOpacity(0.75),
          appBar: AppBar(
            title: Text(
              'Table de 9',
              style: TextStyle(fontSize: 35),
            ),
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                  child: Row(children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Colors.blueGrey, width: 7.0)),
                  margin: new EdgeInsets.fromLTRB(110, 15, 0, 0),
                  padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
                  color: Colors.black.withOpacity(0.15),
                  child: Text(
                    '0 x 9 = 0\n\n1 x 9 = 9\n\n2 x 9 = 18\n\n3 x 9 = 27\n\n4 x 9 = 36\n\n5 x 9 = 45\n\n6 x 9 = 54\n\n7 x 9 = 63\n\n8 x 9 = 72\n\n9 x 9 = 81\n\n10 x 9 = 90',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black.withOpacity(1),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ]))
            ],
          ));
    } else {
      return Scaffold(
          backgroundColor: Colors.white.withOpacity(0.75),
          appBar: AppBar(
            title: Text(
              'Table de 10',
              style: TextStyle(fontSize: 35),
            ),
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                  child: Row(children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Colors.blueGrey, width: 7.0)),
                  margin: new EdgeInsets.fromLTRB(105, 15, 0, 0),
                  padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
                  color: Colors.black.withOpacity(0.15),
                  child: Text(
                    '0 x 10 =0\n\n1 x 10 = 10\n\n2 x 10 = 20\n\n3 x 10 = 30\n\n4 x 10 = 40\n\n5 x 10 = 50\n\n6 x 10 = 60\n\n7 x 10 = 70\n\n8 x 10 = 80\n\n9 x 10 = 90\n\n10 x 10 = 100',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black.withOpacity(1),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ]))
            ],
          ));
    }
  }
}
