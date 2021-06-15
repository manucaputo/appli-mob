import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'Eighth.dart';
import 'fourth_page.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'dart:math';

// cette page est pour le niveau "difficile"
class SixthPage extends StatefulWidget {
  int value;
  int totalScore;

  List<String> list = [];
  SixthPage({
    this.value,
    this.totalScore,
    this.list,
  });

  static const tag = "sixth_page";
  void main() {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SixthPage(
        value: value,
        totalScore: totalScore,
        list: list,
      ),
      theme: ThemeData.dark(),
    ));
  }

  @override
  _SixthPageState createState() => _SixthPageState(
        value,
        totalScore,
        list,
      );
}

class _SixthPageState extends State<SixthPage> {
  int value;
  int totalScore;
  List<String> list = [];

  _SixthPageState(this.value, this.totalScore, this.list);

  CountDownController _controller = CountDownController();

  Random random2 = new Random();
  Random random3 = new Random();
  Random random4 = new Random();

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Color e = Color.fromRGBO(124, 179, 74, 1.0);
    Color f = Color.fromRGBO(84, 125, 42, 1.0);
    Color c = Color.fromRGBO(99, 172, 57, 1.0);
    Color a = Color.fromRGBO(201, 243, 167, 1.0);

    Color b = Color.fromRGBO(255, 255, 132, 0.93);
    Color d = Color.fromRGBO(132, 69, 60, 1);

    //création des valeurs randoms pour les calculs
    int randomNumber2 = random2.nextInt(10);
    String random_string2 = randomNumber2.toString();

    int randomNumber3 = random3.nextInt(10) + 1;
    String random_string3 = randomNumber3.toString();
    // calcul du résultat
    int result = randomNumber2 * randomNumber3;
    String resultat = result.toString();

    // les 2 fonctions "ajouter" et "ajouter2" permettent l'affichage du "pop-up" et sont identiques à celles de la page "Fifth_page"
    Future<void> ajouter() async {
      await showDialog<void>(
        context: context,
        barrierDismissible:
            false, // si on appuie à l’extérieur ça ne se ferme pas
        //ça ne va pas disparaitre
        builder: (BuildContext dialogContext) {
          return AlertDialog(
              content: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 40, 20.0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize
                        .min, // taille du "pop-up" la plus petite possible
                    children: <Widget>[
                      Image.asset(
                        'assets/dragon_triste.png', // lien pour l'image
                      ),
                      Flexible(
                          // utilisation de "flexible" et de "expanded" pour la bonne adaptation de la taille
                          child: Row(children: <Widget>[
                        Expanded(
                            child: Container(
                          margin: new EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Text(
                              'Temps écoulé !\nScore :' +
                                  ' $totalScore' + // affiche le score
                                  ' / 10',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                // style du texte
                                fontSize: 30,
                                fontWeight: FontWeight.bold, // en gras
                              )),
                        ))
                      ])),
                      // bouton pour accéder à la correction
                      Flexible(
                          child: Row(children: <Widget>[
                        Expanded(
                            child: Container(
                          margin: new EdgeInsets.fromLTRB(0, 20, 0,
                              0), // position par rapport aux autres éléments
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  15.0), //arrondir les angles
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 0),
                            textColor: Colors.white,
                            color: c, //couleur du bouton
                            child: Text(
                              // le texte
                              'Corrections',
                              style: TextStyle(
                                // style du texte
                                fontSize: 35,
                                color: Colors.white.withOpacity(0.9),
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => EighthPage(
                                  list: list,
                                  totalScore: totalScore,
                                ),
                              ));
                            },
                          ),
                        ))
                      ])),
                      // bouton pour accéder au menu des niveaux, méthode identique au précédent, juste la redirection est diférente
                      Flexible(
                          child: Row(children: <Widget>[
                        Expanded(
                            child: Container(
                          margin: new EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 0),
                            textColor: Colors.white,
                            color: c,
                            child: Text(
                              'Retour',
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
                                builder: (context) => FourthPage(),
                              ));
                            },
                          ),
                        ))
                      ])),
                      // bouton pour recommencer, méthode identique au précédent, juste la redirection est diférente
                      Flexible(
                          child: Row(children: <Widget>[
                        Expanded(
                            child: Container(
                          margin: new EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 0),
                              textColor: Colors.white,
                              color: c,
                              child: Text(
                                'Nouveau',
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
                                      list: list),
                                ));
                              }),
                        ))
                      ])),
                    ],
                  )));
        },
      );
    }

    Future<void> ajouter2() async {
      await showDialog<void>(
        context: context,
        barrierDismissible:
            false, // si on appuie à l’extérieur ça ne se ferme pas
        //ça ne va pas disparaitre
        builder: (BuildContext dialogContext) {
          return AlertDialog(
              content: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 40, 20.0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize
                        .min, // taille du "pop-up" la plus petite possible
                    children: <Widget>[
                      Image.asset(
                        'assets/dragon_content.png', // lien pour l'image
                      ),
                      Flexible(
                          // utilisation de "flexible" et de "expanded" pour la bonne adaptation de la taille
                          child: Row(children: <Widget>[
                        Expanded(
                            child: Container(
                          margin: new EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Text(
                              'Temps écoulé !\nScore :' +
                                  ' $totalScore' + // affiche le score
                                  ' / 10',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                // style du texte
                                fontSize: 30,
                                fontWeight: FontWeight.bold, // en gras
                              )),
                        ))
                      ])),
                      // bouton pour accéder à la correction
                      Flexible(
                          child: Row(children: <Widget>[
                        Expanded(
                            child: Container(
                          margin: new EdgeInsets.fromLTRB(0, 20, 0,
                              0), // position par rapport aux autres éléments
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  15.0), //arrondir les angles
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 0),
                            textColor: Colors.white,
                            color: c, //couleur du bouton
                            child: Text(
                              // le texte
                              'Corrections',
                              style: TextStyle(
                                // style du texte
                                fontSize: 35,
                                color: Colors.white.withOpacity(0.9),
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => EighthPage(
                                  list: list,
                                  totalScore: totalScore,
                                ),
                              ));
                            },
                          ),
                        ))
                      ])),
                      // bouton pour accéder au menu des niveaux, méthode identique au précédent, juste la redirection est diférente
                      Flexible(
                          child: Row(children: <Widget>[
                        Expanded(
                            child: Container(
                          margin: new EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 0),
                            textColor: Colors.white,
                            color: c,
                            child: Text(
                              'Retour',
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
                                builder: (context) => FourthPage(),
                              ));
                            },
                          ),
                        ))
                      ])),
                      // bouton pour recommencer, méthode identique au précédent, juste la redirection est diférente
                      Flexible(
                          child: Row(children: <Widget>[
                        Expanded(
                            child: Container(
                          margin: new EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 0),
                              textColor: Colors.white,
                              color: c,
                              child: Text(
                                'Nouveau',
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
                                      list: list),
                                ));
                              }),
                        ))
                      ])),
                    ],
                  )));
        },
      );
    }

    // quand le score est trop faible
    if (totalScore < 6) {
      return Scaffold(
          backgroundColor: a,
          appBar: AppBar(
            //création de la appBar
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          FourthPage()), //renvoi à la page "FourthPage"
                );
              },
            ),
            title: Text(
              'Niveau difficile',
              style: TextStyle(fontSize: 35),
            ),
            centerTitle: true,
            backgroundColor: c, //couleur de la appBar
          ),
          body: value < 10 // Condition
              //tant que toutes les questions ne sont pas faites
              ? Column(
                  // Alors

                  children: <Widget>[
                    //création du chrono identique à la page "Fith_page", sauf que le temps est plus court car il y a un chrono sur chaque question
                    Expanded(
                        child: Container(
                            margin: new EdgeInsets.fromLTRB(0, 20, 0, 10),
                            child: CircularCountDownTimer(
                              width: MediaQuery.of(context).size.width / 3,
                              height: MediaQuery.of(context).size.height / 3,
                              duration: 5,
                              fillColor: c,
                              ringColor: Colors.white,
                              controller: _controller,
                              backgroundColor: Colors.white,
                              strokeWidth: 10.0,
                              strokeCap: StrokeCap.round,
                              isTimerTextShown: true,
                              isReverse: false,
                              onComplete: () {
                                ajouter();
                              },
                              textStyle: TextStyle(
                                  fontSize: 40.0, color: Colors.black),
                            ))),
                    // écriture du calcul

                    AutoSizeText(
                      //la question
                      '$random_string2' + ' x ' + '$random_string3' + ' = ...',
                      maxLines: 1,
                      style: TextStyle(
                        //style du texte
                        fontSize: 40,
                        color: Colors.black.withOpacity(0.9),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                        //l'utilisateur encode sa valeur

                        padding:
                            EdgeInsets.symmetric(vertical: 40, horizontal: 30),
                        child: new Theme(
                          data: new ThemeData(
                            primaryColor: Colors.black,
                            primaryColorDark: Colors.white,
                          ),
                          child: TextField(
                            // cadre pour encoder la valeur
                            onEditingComplete: () {},

                            textInputAction: TextInputAction.send,

                            autofocus: true,
                            controller: nameController, // enregistre la valeur
                            keyboardType: TextInputType
                                .number, // permet d'avoir la clavier avec les chiffres

                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText:
                                  'Entre ta réponse', // affiche "Entre ta réponse" sur le label
                              labelStyle: TextStyle(
                                  color: Colors.black, fontSize: 20.0),
                            ),
                          ),
                        )),
                    // bouton pour avoir la question suivante
                    Flexible(
                        child: Row(children: <Widget>[
                      Expanded(
                          child: Container(
                        margin: new EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
                        child: RaisedButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          textColor: Colors.white,
                          color: c,
                          child: AutoSizeText(
                            'Question suivante',
                            maxLines: 1,
                            style: TextStyle(fontSize: 30),
                          ),
                          onPressed: () {
                            if (nameController.text == resultat) {
                              // si le résultat est bon augmente le score de 1
                              totalScore += 1;
                            } else {
                              //enregistre la bonne valeur et le calcul quand la réponse est mauvaise
                              list.add('$random_string2');
                              list.add('$random_string3');
                              list.add('$resultat');
                            }
                            value += 1; // augmente le numéro de la question

                            Navigator.pushReplacement(
                              // enlève l'animation entre chaque question
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation1, animation2) =>
                                        SixthPage(
                                  value: value,
                                  totalScore: totalScore,
                                  list: list,
                                ),
                                transitionDuration: Duration(seconds: 0),
                              ),
                            );
                          },
                        ),
                      ))
                    ]))
                  ],
                )
              : Column(
                  // quand il n'y a plus de question
                  // Sinon

                  mainAxisAlignment: MainAxisAlignment
                      .center, // centre les différents éléments

                  // Alors
                  children: <Widget>[
                    Image(
                        image: AssetImage(
                            'assets/dragon_triste.png')), //lien de l'image
                    Expanded(
                        child: Container(
                            margin: new EdgeInsets.fromLTRB(
                                15.0, 45.0, 15.0, 0), //position
                            child: AutoSizeText(
                              'Questionnaire terminé\nscore : ' +
                                  '$totalScore' +
                                  ' /10\n', //écriture du score
                              style: TextStyle(
                                  //style du texte
                                  fontSize: 35,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ))),
                    //création du bouton pour avoir la correction
                    Flexible(
                        // "Flexible" et "container" pour avoir une bonne adaptation de la taille
                        child: Row(children: <Widget>[
                      Expanded(
                          child: Container(
                              margin: new EdgeInsets.fromLTRB(
                                  //position
                                  15.0,
                                  30.0,
                                  15.0,
                                  2.0),
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      15.0), // arrondir les angles
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 0),
                                textColor: Colors.white,
                                color: c,
                                child: AutoSizeText(
                                  //texte qui s'adapte tout seul
                                  'Corrections',
                                  maxLines: 1, // 1 ligne maximum
                                  style: TextStyle(
                                    //style du texte
                                    fontSize: 35,
                                    color: Colors.white.withOpacity(0.9),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => EighthPage(
                                      // direction page 8 avec les paramètres
                                      list: list,
                                      totalScore: totalScore,
                                    ),
                                  ));
                                },
                              )))
                    ])),
                    //identique au bouton précédent, sauf la redirection qui permet de retourner au menu
                    Flexible(
                        child: Row(
                      // les 2 boutons sont sur la même ligne
                      children: <Widget>[
                        Expanded(
                            child: Container(
                                margin: new EdgeInsets.fromLTRB(
                                    15.0, 40.0, 15.0, 2.0),
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 0),
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
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => FourthPage(),
                                    ));
                                  },
                                ))),
                        //identique au bouton précédent, sauf la redirection qui permet de recommencer
                        Expanded(
                            child: Container(
                          margin:
                              new EdgeInsets.fromLTRB(15.0, 40.0, 15.0, 2.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 0),
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
                    ))
                  ],
                ));
    } else {
      // identique que le scaffold précédent mais quand le score est bon
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
              'Niveau difficile',
              style: TextStyle(fontSize: 35),
            ),
            centerTitle: true,
            backgroundColor: c,
          ),
          body: value < 10 //&& _counter>0 // Condition

              ? Column(
                  // Alors

                  children: <Widget>[
                    Expanded(
                        child: Container(
                            margin: new EdgeInsets.fromLTRB(0, 10.0, 0, 10.0),
                            child: CircularCountDownTimer(
                              width: MediaQuery.of(context).size.width / 3.75,
                              height: MediaQuery.of(context).size.height / 3.75,
                              duration: 5,
                              fillColor: c,
                              ringColor: Colors.white,
                              controller: _controller,
                              backgroundColor: Colors.white,
                              strokeWidth: 10.0,
                              strokeCap: StrokeCap.round,
                              isTimerTextShown: true,
                              isReverse: false,
                              onComplete: () {
                                ajouter2();
                              },
                              textStyle: TextStyle(
                                  fontSize: 40.0, color: Colors.black),
                            ))),
                    AutoSizeText(
                      //je pose la question
                      '$random_string2' + ' x ' + '$random_string3' + ' = ...',
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black.withOpacity(0.9),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                        //je laisse l'utilisateur encoder sa valeur

                        padding:
                            EdgeInsets.symmetric(vertical: 40, horizontal: 30),
                        child: new Theme(
                          data: new ThemeData(
                            primaryColor: Colors.black,
                            primaryColorDark: Colors.white,
                          ),
                          child: TextField(
                            onEditingComplete: () {},
                            textInputAction: TextInputAction.send,
                            autofocus: true,
                            controller: nameController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Entre ta réponse',
                              labelStyle: TextStyle(
                                  color: Colors.black, fontSize: 20.0),
                            ),
                          ),
                        )),
                    Flexible(
                        child: Row(children: <Widget>[
                      Expanded(
                          child: Container(
                        margin: new EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
                        child: RaisedButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          textColor: Colors.white,
                          color: c,
                          child: AutoSizeText(
                            'Question suivante',
                            maxLines: 1,
                            style: TextStyle(fontSize: 30),
                          ),
                          onPressed: () {
                            if (nameController.text == resultat) {
                              totalScore += 1;
                            } else {
                              list.add('$random_string2');
                              list.add('$random_string3');
                              list.add('$resultat');
                            }
                            value += 1;

                            Navigator.pushReplacement(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation1, animation2) =>
                                        SixthPage(
                                  value: value,
                                  totalScore: totalScore,
                                  list: list,
                                ),
                                transitionDuration: Duration(seconds: 0),
                              ),
                            );
                          },
                        ),
                        /*Question(
                  questions[_questionIndex]['questionText'],
                ),
                ...(questions[_questionIndex]['answers'] as List<String>)
                    .map((answer) {
                  return Answer(_answerQuestion, answer);
                }).toList() */
                      ))
                    ]))
                  ],
                )
              : Column(
                  // Sinon

                  mainAxisAlignment: MainAxisAlignment.center,

                  // Alors
                  children: <Widget>[
                    Image(image: AssetImage('assets/dragon_content.png')),
                    Expanded(
                        child: Container(
                            margin:
                                new EdgeInsets.fromLTRB(15.0, 45.0, 15.0, 0),
                            child: AutoSizeText(
                              'Questionnaire terminé\nscore : ' +
                                  '$totalScore' +
                                  ' /10\n',
                              style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ))),
                    Flexible(
                        child: Row(children: <Widget>[
                      Expanded(
                          child: Container(
                              margin: new EdgeInsets.fromLTRB(
                                  15.0, 30.0, 15.0, 2.0),
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 0),
                                textColor: Colors.white,
                                color: c,
                                child: AutoSizeText(
                                  'Corrections',
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.white.withOpacity(0.9),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => EighthPage(
                                      list: list,
                                      totalScore: totalScore,
                                    ),
                                  ));
                                },
                              )))
                    ])),
                    Flexible(
                        child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Container(
                                margin: new EdgeInsets.fromLTRB(
                                    15.0, 40.0, 15.0, 2.0),
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 0),
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
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => FourthPage(),
                                    ));
                                  },
                                ))),
                        Expanded(
                            child: Container(
                          margin:
                              new EdgeInsets.fromLTRB(15.0, 40.0, 15.0, 2.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 0),
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
                    ))
                  ],
                ));
    }
  }
}
