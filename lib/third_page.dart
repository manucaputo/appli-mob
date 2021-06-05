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
  Color f = Color.fromRGBO(84, 125, 42, 1.0);

  _ThirdPageState(this.value);

  @override
  Widget build(BuildContext context) {
    if (value == 1) {
      // table 1
      return Scaffold(
          backgroundColor: a,
          appBar: AppBar(
            // définition de la AppBAr
            title: Text(
              'Table de 1', // texte de la AppBar
              style: TextStyle(fontSize: 35),
            ),
            centerTitle: true, //titre centré
            backgroundColor: f, // couleur du titre
          ),
          body: Center(
            child: Stack(children: <Widget>[
              // Stack va permettre d'utiliser l'image comme fond et d'écrire dessus
              Container(
                  margin: new EdgeInsets.fromLTRB(
                      0, 0, 0, 0), // position de l'image
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage('assets/bulle2.png'), // lien pour l'image
                      fit: BoxFit.fill, // affiche l'image en fond
                    ),
                  )),
              Container(
                /*decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: Colors.blueGrey, width: 7.0)),*/
                margin: new EdgeInsets.fromLTRB(165, 75, 10, 0),
                padding: EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 20), // position de l'écriture de la table
                //color: Colors.black.withOpacity(0.15),
                child: AutoSizeText(
                  '0 x 1 = 0\n1 x 1 = 1\n2 x 1 = 2\n3 x 1 = 3\n4 x 1 = 4\n5 x 1 = 5\n6 x 1 = 6\n7 x 1 = 7\n8 x 1 = 8\n9 x 1 = 9\n10 x 1 = 10', //écriture de la table
                  textAlign: TextAlign.center, // permet de centrer le text
                  maxLines: 11, // nombre maximum de ligne à 11
                  style: TextStyle(
                      // style du tex
                      fontSize: 35,
                      color: Colors.black.withOpacity(1),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
          ));
    } else if (value == 2) {
      // méthode identique pour les autres tables
      return Scaffold(
          backgroundColor: a,
          appBar: AppBar(
            // définition de la AppBAr
            title: Text(
              'Table de 2', // texte de la AppBar
              style: TextStyle(fontSize: 35),
            ),
            centerTitle: true, //titre centré
            backgroundColor: f, // couleur du titre
          ),
          body: Center(
            child: Stack(children: <Widget>[
              // Stack va permettre d'utiliser l'image comme fond et d'écrire dessus
              Container(
                  margin: new EdgeInsets.fromLTRB(
                      0, 0, 0, 0), // position de l'image
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage('assets/bulle2.png'), // lien pour l'image
                      fit: BoxFit.fill, // affiche l'image en fond
                    ),
                  )),
              Container(
                /*decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: Colors.blueGrey, width: 7.0)),*/
                margin: new EdgeInsets.fromLTRB(165, 75, 10, 0),
                padding: EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 20), // position de l'écriture de la table
                //color: Colors.black.withOpacity(0.15),
                child: AutoSizeText(
                  '0 x 2 = 0\n1 x 2 = 2\n2 x 2 = 4\n3 x 2 = 6\n4 x 2 = 8\n5 x 2 = 10\n6 x 2 = 12\n7 x 2 = 14\n8 x 2 = 16\n9 x 2 = 18\n10 x 2 = 20',
                  textAlign: TextAlign.center, // permet de centrer le text
                  maxLines: 11, // nombre maximum de ligne à 11
                  style: TextStyle(
                      // style du tex
                      fontSize: 35,
                      color: Colors.black.withOpacity(1),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
          ));
    } else if (value == 3) {
      return Scaffold(
          backgroundColor: a,
          appBar: AppBar(
            // définition de la AppBAr
            title: Text(
              'Table de 3', // texte de la AppBar
              style: TextStyle(fontSize: 35),
            ),
            centerTitle: true, //titre centré
            backgroundColor: f, // couleur du titre
          ),
          body: Center(
            child: Stack(children: <Widget>[
              // Stack va permettre d'utiliser l'image comme fond et d'écrire dessus
              Container(
                  margin: new EdgeInsets.fromLTRB(
                      0, 0, 0, 0), // position de l'image
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage('assets/bulle2.png'), // lien pour l'image
                      fit: BoxFit.fill, // affiche l'image en fond
                    ),
                  )),
              Container(
                /*decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: Colors.blueGrey, width: 7.0)),*/
                margin: new EdgeInsets.fromLTRB(165, 75, 10, 0),
                padding: EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 20), // position de l'écriture de la table
                //color: Colors.black.withOpacity(0.15),
                child: AutoSizeText(
                  '0 x 3 = 0\n1 x 3 = 3\n2 x 3 = 6\n3 x 3 = 9\n4 x 3 = 12\n5 x 3 = 15\n6 x 3 = 18\n7 x 3 = 21\n8 x 3 = 24\n9 x 3 = 27\n10 x 3 = 30',
                  textAlign: TextAlign.center, // permet de centrer le text
                  maxLines: 11, // nombre maximum de ligne à 11
                  style: TextStyle(
                      // style du tex
                      fontSize: 35,
                      color: Colors.black.withOpacity(1),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
          ));
    } else if (value == 4) {
      return Scaffold(
          backgroundColor: a,
          appBar: AppBar(
            // définition de la AppBAr
            title: Text(
              'Table de 4', // texte de la AppBar
              style: TextStyle(fontSize: 35),
            ),
            centerTitle: true, //titre centré
            backgroundColor: f, // couleur du titre
          ),
          body: Center(
            child: Stack(children: <Widget>[
              // Stack va permettre d'utiliser l'image comme fond et d'écrire dessus
              Container(
                  margin: new EdgeInsets.fromLTRB(
                      0, 0, 0, 0), // position de l'image
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage('assets/bulle2.png'), // lien pour l'image
                      fit: BoxFit.fill, // affiche l'image en fond
                    ),
                  )),
              Container(
                /*decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: Colors.blueGrey, width: 7.0)),*/
                margin: new EdgeInsets.fromLTRB(165, 75, 10, 0),
                padding: EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 20), // position de l'écriture de la table
                //color: Colors.black.withOpacity(0.15),
                child: AutoSizeText(
                  '0 x 4 = 0\n1 x 4 = 4\n2 x 4 = 8\n3 x 4 = 12\n4 x 4 = 16\n5 x 4 = 20\n6 x 4 = 24\n7 x 4 = 28\n8 x 4 = 32\n9 x 4 = 36\n10 x 4 = 40',
                  textAlign: TextAlign.center, // permet de centrer le text
                  maxLines: 11, // nombre maximum de ligne à 11
                  style: TextStyle(
                      // style du tex
                      fontSize: 35,
                      color: Colors.black.withOpacity(1),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
          ));
    } else if (value == 5) {
      return Scaffold(
          backgroundColor: a,
          appBar: AppBar(
            // définition de la AppBAr
            title: Text(
              'Table de 5', // texte de la AppBar
              style: TextStyle(fontSize: 35),
            ),
            centerTitle: true, //titre centré
            backgroundColor: f, // couleur du titre
          ),
          body: Center(
            child: Stack(children: <Widget>[
              // Stack va permettre d'utiliser l'image comme fond et d'écrire dessus
              Container(
                  margin: new EdgeInsets.fromLTRB(
                      0, 0, 0, 0), // position de l'image
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage('assets/bulle2.png'), // lien pour l'image
                      fit: BoxFit.fill, // affiche l'image en fond
                    ),
                  )),
              Container(
                /*decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: Colors.blueGrey, width: 7.0)),*/
                margin: new EdgeInsets.fromLTRB(165, 75, 10, 0),
                padding: EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 20), // position de l'écriture de la table
                //color: Colors.black.withOpacity(0.15),
                child: AutoSizeText(
                  '0 x 5 = 0\n1 x 5 = 5\n2 x 5 = 10\n3 x 5 = 15\n4 x 5 = 20\n5 x 5 = 25\n6 x 5 = 30\n7 x 5 = 35\n8 x 5 = 40\n9 x 5 = 45\n10 x 5 = 50',
                  textAlign: TextAlign.center, // permet de centrer le text
                  maxLines: 11, // nombre maximum de ligne à 11
                  style: TextStyle(
                      // style du tex
                      fontSize: 35,
                      color: Colors.black.withOpacity(1),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
          ));
    } else if (value == 6) {
      return Scaffold(
          backgroundColor: a,
          appBar: AppBar(
            // définition de la AppBAr
            title: Text(
              'Table de 6', // texte de la AppBar
              style: TextStyle(fontSize: 35),
            ),
            centerTitle: true, //titre centré
            backgroundColor: f, // couleur du titre
          ),
          body: Center(
            child: Stack(children: <Widget>[
              // Stack va permettre d'utiliser l'image comme fond et d'écrire dessus
              Container(
                  margin: new EdgeInsets.fromLTRB(
                      0, 0, 0, 0), // position de l'image
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage('assets/bulle2.png'), // lien pour l'image
                      fit: BoxFit.fill, // affiche l'image en fond
                    ),
                  )),
              Container(
                /*decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: Colors.blueGrey, width: 7.0)),*/
                margin: new EdgeInsets.fromLTRB(165, 75, 10, 0),
                padding: EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 20), // position de l'écriture de la table
                //color: Colors.black.withOpacity(0.15),
                child: AutoSizeText(
                  '0 x 6 = 0\n1 x 6 = 6\n2 x 6 = 12\n3 x 6 = 18\n4 x 6 = 24\n5 x 6 = 30\n6 x 6 = 36\n7 x 6 = 42\n8 x 6 = 48\n9 x 6 = 54\n10 x 6 = 60',
                  textAlign: TextAlign.center, // permet de centrer le text
                  maxLines: 11, // nombre maximum de ligne à 11
                  style: TextStyle(
                      // style du tex
                      fontSize: 35,
                      color: Colors.black.withOpacity(1),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
          ));
    } else if (value == 7) {
      return Scaffold(
          backgroundColor: a,
          appBar: AppBar(
            // définition de la AppBAr
            title: Text(
              'Table de 7', // texte de la AppBar
              style: TextStyle(fontSize: 35),
            ),
            centerTitle: true, //titre centré
            backgroundColor: f, // couleur du titre
          ),
          body: Center(
            child: Stack(children: <Widget>[
              // Stack va permettre d'utiliser l'image comme fond et d'écrire dessus
              Container(
                  margin: new EdgeInsets.fromLTRB(
                      0, 0, 0, 0), // position de l'image
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage('assets/bulle2.png'), // lien pour l'image
                      fit: BoxFit.fill, // affiche l'image en fond
                    ),
                  )),
              Container(
                /*decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: Colors.blueGrey, width: 7.0)),*/
                margin: new EdgeInsets.fromLTRB(165, 75, 10, 0),
                padding: EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 20), // position de l'écriture de la table
                //color: Colors.black.withOpacity(0.15),
                child: AutoSizeText(
                  '0 x 7 = 0\n1 x 7 = 7\n2 x 7 = 14\n3 x 7 = 21\n4 x 7 = 28\n5 x 7 = 35\n6 x 7 = 42\n7 x 7 = 49\n8 x 7 = 56\n9 x 7 = 63\n10 x 7 = 70',
                  textAlign: TextAlign.center, // permet de centrer le text
                  maxLines: 11, // nombre maximum de ligne à 11
                  style: TextStyle(
                      // style du tex
                      fontSize: 35,
                      color: Colors.black.withOpacity(1),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
          ));
    } else if (value == 8) {
      return Scaffold(
          backgroundColor: a,
          appBar: AppBar(
            // définition de la AppBAr
            title: Text(
              'Table de 8', // texte de la AppBar
              style: TextStyle(fontSize: 35),
            ),
            centerTitle: true, //titre centré
            backgroundColor: f, // couleur du titre
          ),
          body: Center(
            child: Stack(children: <Widget>[
              // Stack va permettre d'utiliser l'image comme fond et d'écrire dessus
              Container(
                  margin: new EdgeInsets.fromLTRB(
                      0, 0, 0, 0), // position de l'image
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage('assets/bulle2.png'), // lien pour l'image
                      fit: BoxFit.fill, // affiche l'image en fond
                    ),
                  )),
              Container(
                /*decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: Colors.blueGrey, width: 7.0)),*/
                margin: new EdgeInsets.fromLTRB(165, 75, 10, 0),
                padding: EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 20), // position de l'écriture de la table
                //color: Colors.black.withOpacity(0.15),
                child: AutoSizeText(
                  '0 x 8 = 0\n1 x 8 = 8\n2 x 8 = 16\n3 x 8 = 24\n4 x 8 = 32\n5 x 8 = 40\n6 x 8 = 48\n7 x 8 = 56\n8 x 8 = 64\n9 x 8 = 72\n10 x 8 = 80',
                  textAlign: TextAlign.center, // permet de centrer le text
                  maxLines: 11, // nombre maximum de ligne à 11
                  style: TextStyle(
                      // style du tex
                      fontSize: 35,
                      color: Colors.black.withOpacity(1),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
          ));
    } else if (value == 9) {
      return Scaffold(
          backgroundColor: a,
          appBar: AppBar(
            // définition de la AppBAr
            title: Text(
              'Table de 9', // texte de la AppBar
              style: TextStyle(fontSize: 35),
            ),
            centerTitle: true, //titre centré
            backgroundColor: f,
          ), // couleur du titre
          body: Center(
            child: Stack(children: <Widget>[
              // Stack va permettre d'utiliser l'image comme fond et d'écrire dessus
              Container(
                  margin: new EdgeInsets.fromLTRB(
                      0, 0, 0, 0), // position de l'image
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage('assets/bulle2.png'), // lien pour l'image
                      fit: BoxFit.fill, // affiche l'image en fond
                    ),
                  )),
              Container(
                /*decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: Colors.blueGrey, width: 7.0)),*/
                margin: new EdgeInsets.fromLTRB(165, 75, 10, 0),
                padding: EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 20), // position de l'écriture de la table
                //color: Colors.black.withOpacity(0.15),
                child: AutoSizeText(
                  '0 x 9 = 0\n1 x 9 = 9\n2 x 9 = 18\n3 x 9 = 27\n4 x 9 = 36\n5 x 9 = 45\n6 x 9 = 54\n7 x 9 = 63\n8 x 9 = 72\n9 x 9 = 81\n10 x 9 = 90',
                  textAlign: TextAlign.center, // permet de centrer le text
                  maxLines: 11, // nombre maximum de ligne à 11
                  style: TextStyle(
                      // style du tex
                      fontSize: 35,
                      color: Colors.black.withOpacity(1),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
          ));
    } else {
      return Scaffold(
          backgroundColor: a,
          appBar: AppBar(
            // définition de la AppBAr
            title: Text(
              'Table de 10', // texte de la AppBar
              style: TextStyle(fontSize: 35),
            ),
            centerTitle: true, //titre centré
            backgroundColor: f, // couleur du titre
          ),
          body: Center(
            child: Stack(children: <Widget>[
              // Stack va permettre d'utiliser l'image comme fond et d'écrire dessus
              Container(
                  margin: new EdgeInsets.fromLTRB(
                      0, 0, 0, 0), // position de l'image
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage('assets/bulle2.png'), // lien pour l'image
                      fit: BoxFit.fill, // affiche l'image en fond
                    ),
                  )),
              Container(
                /*decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: Colors.blueGrey, width: 7.0)),*/
                margin: new EdgeInsets.fromLTRB(165, 75, 10, 0),
                padding: EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 20), // position de l'écriture de la table
                //color: Colors.black.withOpacity(0.15),
                child: AutoSizeText(
                  '0 x 10 = 0\n1 x 10 = 10\n2 x 10 = 20\n3 x 10 = 30\n4 x 10 = 40\n5 x 10 = 50\n6 x 10 = 60\n7 x 10 = 70\n8 x 10 = 80\n9 x 10 = 90\n10 x 10 = 100',
                  textAlign: TextAlign.center, // permet de centrer le text
                  maxLines: 11, // nombre maximum de ligne à 11
                  style: TextStyle(
                      // style du tex
                      fontSize: 35,
                      color: Colors.black.withOpacity(1),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
          ));
    }
  }
}
