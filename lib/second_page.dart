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

    Color e = Color.fromRGBO(58, 153, 11, 1.0);

    //Color f = Color.fromRGBO(103, 151, 59, 1.0);
   Color f = Color.fromRGBO(84, 125, 42, 1.0);
    Color c = Color.fromRGBO(147, 219, 91, 0.6);
    Color a = Color.fromRGBO(201, 243, 167, 1.0);

    Color b = Color.fromRGBO(255, 255, 132, 0.93);
    Color d = Color.fromRGBO(132, 69, 60, 1);

    return Scaffold(
        backgroundColor: b, // couleur du fond
        // création de la appbar
        appBar: AppBar(
          title: Text(
            'Choisis ta table !',
            style: TextStyle(fontSize: 35),
          ),
          centerTitle: true, // centre l'écriture
          backgroundColor: f, // couleur de la appBar
        ),

        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end, // permet la bonne position des différents boutons
            children: <Widget>[
              Flexible(   // utilisation de Flexible afin que tout s'adapte bien à chaque téléphone
                  child: Row(children: <Widget>[
                Expanded(
                    child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(color: f, width: 8.0)),//position du bouton par rapport aux autres éléments
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0), //arrondi les angles
                      ),
                      onPressed: () {   // quand on presse le bouton
                        value = 1;
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(value: value), // affichage de la page 3 avec le numéro de table choisie qui est la valeur de "value"
                        ));
                      },
                      color: a, // couleur du bouton
                      padding:
                          EdgeInsets.symmetric(vertical: 35.0, horizontal: 0), // définition du padding
                      child: AutoSizeText(      // autosizetext permet au texte de prendre une taille possible pour la taille du bouton
                        '1',
                        style: TextStyle(
                          fontSize: 40, // taille de la police d'écriture
                          color: f, //couleur de la police d'écriture
                        ),
                      )),
                )),
                // les autres boutons sont créés de la même façon
                Expanded(
                    child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 20, 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(color: f, width: 8.0)),//position du bouton par rapport aux autres éléments
                      child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0), //arrondi les angles
                          ),
                      onPressed: () {
                        value = 2;
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(value: value),
                        ));
                      },
                      color: a,
                      padding:
                          EdgeInsets.symmetric(vertical: 35.0, horizontal: 0),
                      child: AutoSizeText(
                        '2',
                        style: TextStyle(
                          fontSize: 40,
                          color: f,
                        ),
                      )),
                )),
                Expanded(
                    child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 20, 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(color: f, width: 8.0)),//position du bouton par rapport aux autres éléments
                      child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0), //arrondi les angles
                          ),
                      onPressed: () {
                        value = 3;
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(value: value),
                        ));
                      },
                      color: a,
                      padding:
                          EdgeInsets.symmetric(vertical: 35.0, horizontal: 0),
                      child: AutoSizeText(
                        '3',
                        style: TextStyle(
                          fontSize: 40,
                          color: f,
                        ),
                      )),
                )),
              ])),
              Flexible(
                  child: Row(children: <Widget>[
                Expanded(
                    child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(color: f, width: 8.0)),//position du bouton par rapport aux autres éléments
                      child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0), //arrondi les angles
                          ),
                      onPressed: () {
                        value = 4;
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(value: value),
                        ));
                      },
                      color: a,
                      padding:
                          EdgeInsets.symmetric(vertical: 35.0, horizontal: 15),
                      child: AutoSizeText(
                        '4',
                        style: TextStyle(
                          fontSize: 40,
                          color: f,
                        ),
                      )),
                )),
                Expanded(
                    child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(color: f, width: 8.0)),//position du bouton par rapport aux autres éléments
                      child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0), //arrondi les angles
                          ),
                      onPressed: () {
                        value = 5;
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(value: value),
                        ));
                      },
                      color: a,
                      padding:
                          EdgeInsets.symmetric(vertical: 35.0, horizontal: 15),
                      child: AutoSizeText(
                        '5',
                        style: TextStyle(
                          fontSize: 40,
                          color: f,
                        ),
                      )),
                )),
                Expanded(
                    child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(color: f, width: 8.0)),//position du bouton par rapport aux autres éléments
                      child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0), //arrondi les angles
                          ),
                      onPressed: () {
                        value = 6;
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(value: value),
                        ));
                      },
                      color: a,
                      padding:
                          EdgeInsets.symmetric(vertical: 35.0, horizontal: 15),
                      child: AutoSizeText(
                        '6',
                        style: TextStyle(
                          fontSize: 40,
                          color: f,
                        ),
                      )),
                )),
              ])),
              Flexible(
                  child: Row(children: <Widget>[
                Expanded(
                    child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(color: f, width: 8.0)),//position du bouton par rapport aux autres éléments
                      child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0), //arrondi les angles
                          ),
                      onPressed: () {
                        value = 7;
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(value: value),
                        ));
                      },
                      color: a,
                      padding:
                          EdgeInsets.symmetric(vertical: 35.0, horizontal: 15),
                      child: AutoSizeText(
                        '7',
                        style: TextStyle(
                          fontSize: 40,
                          color: f,
                        ),
                      )),
                )),
                Expanded(
                    child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(color: f, width: 8.0)),//position du bouton par rapport aux autres éléments
                      child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0), //arrondi les angles
                          ),
                      onPressed: () {
                        value = 8;
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(value: value),
                        ));
                      },
                      color: a,
                      padding:
                          EdgeInsets.symmetric(vertical: 35.0, horizontal: 15),
                      child: AutoSizeText(
                        '8',
                        style: TextStyle(
                          fontSize: 40,
                          color: f,
                        ),
                      )),
                )),
                Expanded(
                    child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(color: f, width: 8.0)),//position du bouton par rapport aux autres éléments
                      child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0), //arrondi les angles
                          ),
                      onPressed: () {
                        value = 9;
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(value: value),
                        ));
                      },
                      color: a,
                      padding:
                          EdgeInsets.symmetric(vertical: 35.0, horizontal: 15),
                      child: AutoSizeText(
                        '9',
                        style: TextStyle(
                          fontSize: 40,
                          color: f,
                        ),
                      )),
                )),
              ])),
              Flexible(
                  child: Row(children: <Widget>[
                Expanded(
                    child: Container(
                  margin: new EdgeInsets.fromLTRB(155.0, 20.0, 155.0, 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(color: f, width: 8.0)),//position du bouton par rapport aux autres éléments
                      child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0), //arrondi les angles
                          ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(),
                        ));
                      },
                      color: a,
                      padding:
                          EdgeInsets.symmetric(vertical: 35.0, horizontal: 15),
                      child: AutoSizeText(
                        '10',
                        style: TextStyle(
                          fontSize: 40,
                          color: f,
                        ),
                      )),
                )),
              ]))
            ]));
  }
}
