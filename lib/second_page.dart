import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'third_page.dart';

// cette page permet  de choisir la table voulue
class SecondPage extends StatefulWidget {
  static const tag = "second_page";

  void main() {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecondPage(),
    ));
  }

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.75), // couleur du fond
        // création de la appbar
        appBar: AppBar(
          title: Text(
            'Choisis ta table !',
            style: TextStyle(fontSize: 35),
          ),
          centerTitle: true, // centre l'écriture
          backgroundColor: Colors.blueGrey, // couleur de la appBar
        ),

        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end, // permet la bonne position des différents boutons
            children: <Widget>[
              Flexible(   // utilisation de Flexible afin que tout s'adapte bien à chaque téléphone
                  child: Row(children: <Widget>[
                Expanded(
                    child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),  //position du bouton par rapport aux autres éléments
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0), //arrondi les angles
                      ),
                      onPressed: () {   // quand on presse le bouton
                        value = 1;
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(value: value), // affichage de la page 3 avec le numéro de table choisie qui est la valeur de "value"
                        ));
                      },
                      color: Colors.blueGrey.withOpacity(1), // couleur du bouton
                      padding:
                          EdgeInsets.symmetric(vertical: 35.0, horizontal: 0), // définition du padding
                      child: AutoSizeText(      // autosizetext permet au texte de prendre une taille possible pour la taille du bouton
                        '1',
                        style: TextStyle(
                          fontSize: 40, // taille de la police d'écriture
                          color: Colors.white.withOpacity(0.9), //couleur de la police d'écriture
                        ),
                      )),
                )),
                // les autres boutons sont créés de la même façon
                Expanded(
                    child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 20, 0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      onPressed: () {
                        value = 2;
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(value: value),
                        ));
                      },
                      color: Colors.blueGrey.withOpacity(1),
                      padding:
                          EdgeInsets.symmetric(vertical: 35.0, horizontal: 0),
                      child: AutoSizeText(
                        '2',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                )),
                Expanded(
                    child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 20, 0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      onPressed: () {
                        value = 3;
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(value: value),
                        ));
                      },
                      color: Colors.blueGrey.withOpacity(1),
                      padding:
                          EdgeInsets.symmetric(vertical: 35.0, horizontal: 0),
                      child: AutoSizeText(
                        '3',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                )),
              ])),
              Flexible(
                  child: Row(children: <Widget>[
                Expanded(
                    child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      onPressed: () {
                        value = 4;
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(value: value),
                        ));
                      },
                      color: Colors.blueGrey.withOpacity(1),
                      padding:
                          EdgeInsets.symmetric(vertical: 35.0, horizontal: 15),
                      child: AutoSizeText(
                        '4',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                )),
                Expanded(
                    child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      onPressed: () {
                        value = 5;
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(value: value),
                        ));
                      },
                      color: Colors.blueGrey.withOpacity(1),
                      padding:
                          EdgeInsets.symmetric(vertical: 35.0, horizontal: 15),
                      child: AutoSizeText(
                        '5',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                )),
                Expanded(
                    child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      onPressed: () {
                        value = 6;
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(value: value),
                        ));
                      },
                      color: Colors.blueGrey.withOpacity(1),
                      padding:
                          EdgeInsets.symmetric(vertical: 35.0, horizontal: 15),
                      child: AutoSizeText(
                        '6',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                )),
              ])),
              Flexible(
                  child: Row(children: <Widget>[
                Expanded(
                    child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      onPressed: () {
                        value = 7;
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(value: value),
                        ));
                      },
                      color: Colors.blueGrey.withOpacity(1),
                      padding:
                          EdgeInsets.symmetric(vertical: 35.0, horizontal: 15),
                      child: AutoSizeText(
                        '7',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                )),
                Expanded(
                    child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      onPressed: () {
                        value = 8;
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(value: value),
                        ));
                      },
                      color: Colors.blueGrey.withOpacity(1),
                      padding:
                          EdgeInsets.symmetric(vertical: 35.0, horizontal: 15),
                      child: AutoSizeText(
                        '8',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                )),
                Expanded(
                    child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      onPressed: () {
                        value = 9;
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(value: value),
                        ));
                      },
                      color: Colors.blueGrey.withOpacity(1),
                      padding:
                          EdgeInsets.symmetric(vertical: 35.0, horizontal: 15),
                      child: AutoSizeText(
                        '9',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                )),
              ])),
              Flexible(
                  child: Row(children: <Widget>[
                Expanded(
                    child: Container(
                  margin: new EdgeInsets.fromLTRB(155.0, 20.0, 155.0, 0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(),
                        ));
                      },
                      color: Colors.blueGrey.withOpacity(1),
                      padding:
                          EdgeInsets.symmetric(vertical: 35.0, horizontal: 15),
                      child: AutoSizeText(
                        '10',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                )),
              ]))
            ]));
  }
}
