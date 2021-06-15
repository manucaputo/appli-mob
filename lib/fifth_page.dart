import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import './quiz.dart';
import 'Eighthfacile.dart';
import 'fourth_page.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'dart:math';

// cette page est utilisée pour le niveau "facile"
class FifthPage extends StatefulWidget {
  static const tag = "fifth_page";
  void main() {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FifthPage(),
      theme: ThemeData.dark(),
    ));
  }

  @override
  _FifthPageState createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
  // les couleurs
  Color e = Color.fromRGBO(124, 179, 74, 1.0);
  Color f = Color.fromRGBO(84, 125, 42, 1.0);
  Color c = Color.fromRGBO(99, 172, 57, 1.0);
  Color a = Color.fromRGBO(201, 243, 167, 1.0);

  Color b = Color.fromRGBO(255, 255, 132, 0.93);
  Color d = Color.fromRGBO(132, 69, 60, 1);

  CountDownController _controller = CountDownController();
  // déclaration des variables
  var _totalScore = 0;
  var _questionIndex = 0;
  List<String> list = [];
  // 3 randoms , 2 pour les calculs et 1 pour la position du bon résultat
  Random random2 = new Random();
  Random random3 = new Random();
  Random random4 = new Random();

  @override
  Widget build(BuildContext context) {
    // donne la valeur aux randoms et transforme en string
    int randomNumber2 = random2.nextInt(10);
    String random_string2 = randomNumber2.toString();

    int randomNumber3 = random3.nextInt(10) + 1;
    String random_string3 = randomNumber3.toString();

    int randomNumber4 = random4.nextInt(3);
    //calcul du résultat
    int result = randomNumber2 * randomNumber3;

    // calcul des propositions fausses
    String resultat = result.toString();
    int result2 = (randomNumber2 * randomNumber3) + 1;
    String resultat2 = result2.toString();
    int result3 = (randomNumber2 * randomNumber3) + 3;
    String resultat3 = result3.toString();
    int result4 = (randomNumber2 * randomNumber3) - 2;
    String resultat4 = result4.toString();

    // création des 10 questions
    final questions = [
      // randomNumber4 choisit la position de la bonne réponse
      if (randomNumber4 ==
          0) // question_1 , la bonne réponse se trouve en premiére position
        {
          'questionText':
              random_string2 + ' x ' + random_string3 + ' = ?', // la question
          'answers': [
            {
              'text': resultat,
              'score': 1
            }, // les réponses avec les scores (1 pour la bonne et 0 pour les autres )
            {'text': resultat2, 'score': 0},
            {'text': resultat3, 'score': 0},
            {'text': resultat4, 'score': 0}
          ],
        }
      else if (randomNumber4 ==
          1) // la bonne réponse se trouve en deuxième position
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat3, 'score': 0},
            {'text': resultat, 'score': 1},
            {'text': resultat4, 'score': 0},
            {'text': resultat2, 'score': 0},
          ],
        }
      else if (randomNumber4 ==
          2) // la bonne réponse se trouve en troisième position
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat4, 'score': 0},
            {'text': resultat2, 'score': 0},
            {'text': resultat, 'score': 1},
            {'text': resultat3, 'score': 0}
          ],
        }
      else // la bonne réponse se trouve en quatrième position
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat2, 'score': 0},
            {'text': resultat4, 'score': 0},
            {'text': resultat3, 'score': 0},
            {'text': resultat, 'score': 1}
          ],
        },
      if (randomNumber4 ==
          0) // question_2 identique à la question précédente sauf que les valeurs sont différentes, il y a en tout 10 questions comme ça
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat, 'score': 1},
            {'text': resultat2, 'score': 0},
            {'text': resultat3, 'score': 0},
            {'text': resultat4, 'score': 0}
          ],
        }
      else if (randomNumber4 == 1)
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat3, 'score': 0},
            {'text': resultat, 'score': 1},
            {'text': resultat4, 'score': 0},
            {'text': resultat2, 'score': 0},
          ],
        }
      else if (randomNumber4 == 2)
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat4, 'score': 0},
            {'text': resultat2, 'score': 0},
            {'text': resultat, 'score': 1},
            {'text': resultat3, 'score': 0}
          ],
        }
      else
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat2, 'score': 0},
            {'text': resultat4, 'score': 0},
            {'text': resultat3, 'score': 0},
            {'text': resultat, 'score': 1}
          ],
        },
      if (randomNumber4 == 0) // question_3
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat, 'score': 1},
            {'text': resultat2, 'score': 0},
            {'text': resultat3, 'score': 0},
            {'text': resultat4, 'score': 0}
          ],
        }
      else if (randomNumber4 == 1)
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat3, 'score': 0},
            {'text': resultat, 'score': 1},
            {'text': resultat4, 'score': 0},
            {'text': resultat2, 'score': 0},
          ],
        }
      else if (randomNumber4 == 2)
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat4, 'score': 0},
            {'text': resultat2, 'score': 0},
            {'text': resultat, 'score': 1},
            {'text': resultat3, 'score': 0}
          ],
        }
      else
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat2, 'score': 0},
            {'text': resultat4, 'score': 0},
            {'text': resultat3, 'score': 0},
            {'text': resultat, 'score': 1}
          ],
        },
      if (randomNumber4 == 0) // question_4
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat, 'score': 1},
            {'text': resultat2, 'score': 0},
            {'text': resultat3, 'score': 0},
            {'text': resultat4, 'score': 0}
          ],
        }
      else if (randomNumber4 == 1)
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat3, 'score': 0},
            {'text': resultat, 'score': 1},
            {'text': resultat4, 'score': 0},
            {'text': resultat2, 'score': 0},
          ],
        }
      else if (randomNumber4 == 2)
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat4, 'score': 0},
            {'text': resultat2, 'score': 0},
            {'text': resultat, 'score': 1},
            {'text': resultat3, 'score': 0}
          ],
        }
      else
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat2, 'score': 0},
            {'text': resultat4, 'score': 0},
            {'text': resultat3, 'score': 0},
            {'text': resultat, 'score': 1}
          ],
        },
      if (randomNumber4 == 0) // question_5
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat, 'score': 1},
            {'text': resultat2, 'score': 0},
            {'text': resultat3, 'score': 0},
            {'text': resultat4, 'score': 0}
          ],
        }
      else if (randomNumber4 == 1)
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat3, 'score': 0},
            {'text': resultat, 'score': 1},
            {'text': resultat4, 'score': 0},
            {'text': resultat2, 'score': 0},
          ],
        }
      else if (randomNumber4 == 2)
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat4, 'score': 0},
            {'text': resultat2, 'score': 0},
            {'text': resultat, 'score': 1},
            {'text': resultat3, 'score': 0}
          ],
        }
      else
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat2, 'score': 0},
            {'text': resultat4, 'score': 0},
            {'text': resultat3, 'score': 0},
            {'text': resultat, 'score': 1}
          ],
        },
      if (randomNumber4 == 0) // question_6
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat, 'score': 1},
            {'text': resultat2, 'score': 0},
            {'text': resultat3, 'score': 0},
            {'text': resultat4, 'score': 0}
          ],
        }
      else if (randomNumber4 == 1)
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat3, 'score': 0},
            {'text': resultat, 'score': 1},
            {'text': resultat4, 'score': 0},
            {'text': resultat2, 'score': 0},
          ],
        }
      else if (randomNumber4 == 2)
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat4, 'score': 0},
            {'text': resultat2, 'score': 0},
            {'text': resultat, 'score': 1},
            {'text': resultat3, 'score': 0}
          ],
        }
      else
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat2, 'score': 0},
            {'text': resultat4, 'score': 0},
            {'text': resultat3, 'score': 0},
            {'text': resultat, 'score': 1}
          ],
        },
      if (randomNumber4 == 0) // question_7
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat, 'score': 1},
            {'text': resultat2, 'score': 0},
            {'text': resultat3, 'score': 0},
            {'text': resultat4, 'score': 0}
          ],
        }
      else if (randomNumber4 == 1)
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat3, 'score': 0},
            {'text': resultat, 'score': 1},
            {'text': resultat4, 'score': 0},
            {'text': resultat2, 'score': 0},
          ],
        }
      else if (randomNumber4 == 2)
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat4, 'score': 0},
            {'text': resultat2, 'score': 0},
            {'text': resultat, 'score': 1},
            {'text': resultat3, 'score': 0}
          ],
        }
      else
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat2, 'score': 0},
            {'text': resultat4, 'score': 0},
            {'text': resultat3, 'score': 0},
            {'text': resultat, 'score': 1}
          ],
        },
      if (randomNumber4 == 0) // question_8
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat, 'score': 1},
            {'text': resultat2, 'score': 0},
            {'text': resultat3, 'score': 0},
            {'text': resultat4, 'score': 0}
          ],
        }
      else if (randomNumber4 == 1)
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat3, 'score': 0},
            {'text': resultat, 'score': 1},
            {'text': resultat4, 'score': 0},
            {'text': resultat2, 'score': 0},
          ],
        }
      else if (randomNumber4 == 2)
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat4, 'score': 0},
            {'text': resultat2, 'score': 0},
            {'text': resultat, 'score': 1},
            {'text': resultat3, 'score': 0}
          ],
        }
      else
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat2, 'score': 0},
            {'text': resultat4, 'score': 0},
            {'text': resultat3, 'score': 0},
            {'text': resultat, 'score': 1}
          ],
        },
      if (randomNumber4 == 0) // question_9
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat, 'score': 1},
            {'text': resultat2, 'score': 0},
            {'text': resultat3, 'score': 0},
            {'text': resultat4, 'score': 0}
          ],
        }
      else if (randomNumber4 == 1)
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat3, 'score': 0},
            {'text': resultat, 'score': 1},
            {'text': resultat4, 'score': 0},
            {'text': resultat2, 'score': 0},
          ],
        }
      else if (randomNumber4 == 2)
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat4, 'score': 0},
            {'text': resultat2, 'score': 0},
            {'text': resultat, 'score': 1},
            {'text': resultat3, 'score': 0}
          ],
        }
      else
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat2, 'score': 0},
            {'text': resultat4, 'score': 0},
            {'text': resultat3, 'score': 0},
            {'text': resultat, 'score': 1}
          ],
        },
      if (randomNumber4 == 0) // question_10
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat, 'score': 1},
            {'text': resultat2, 'score': 0},
            {'text': resultat3, 'score': 0},
            {'text': resultat4, 'score': 0}
          ],
        }
      else if (randomNumber4 == 1)
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat3, 'score': 0},
            {'text': resultat, 'score': 1},
            {'text': resultat4, 'score': 0},
            {'text': resultat2, 'score': 0},
          ],
        }
      else if (randomNumber4 == 2)
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat4, 'score': 0},
            {'text': resultat2, 'score': 0},
            {'text': resultat, 'score': 1},
            {'text': resultat3, 'score': 0}
          ],
        }
      else
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [
            {'text': resultat2, 'score': 0},
            {'text': resultat4, 'score': 0},
            {'text': resultat3, 'score': 0},
            {'text': resultat, 'score': 1}
          ],
        },
    ];

    // fonction qui permet d'ajouter le socre et d'enregistrer les mauvaises réponses
    void _answerQuestion(int score) {
      _totalScore += score;
      if (score == 0) {
        list.add('$random_string2');
        list.add('$random_string3');
        list.add('$resultat');
      }

      setState(() {
        _questionIndex =
            _questionIndex + 1; // augmente à chaque nouvelle question
      });
    }

    void _resetQuiz() {
      setState(() {
        _questionIndex = 0;
        _totalScore = 0;
      });
    }

    // fonction pour le "pop-up" quand le temps est écoulé
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
                          // utilisation de flexible et de expanded pour la bonne adaptation de la taille
                          child: Row(children: <Widget>[
                        Expanded(
                            child: Container(
                          margin: new EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Text(
                              'Temps écoulé !\nScore :' +
                                  ' $_totalScore' + // affiche le score
                                  ' / 10',
                              textAlign: TextAlign.center, //centre le texte
                              style: TextStyle(
                                // style du texte
                                fontSize: 30,
                                fontWeight: FontWeight.bold, // en gras
                              )),
                        ))
                      ])),
                      // bouton pour accéder à la correction
                      Flexible(
                          // utilisation de flexible et de expanded pour la bonne adaptation de la taille
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
                              // quand le bouton est sélectionné
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => EighthfacilePage(
                                  //page pour la correction
                                  list: list,
                                  totalScore: _totalScore,
                                ),
                              ));
                            },
                          ),
                        ))
                      ])),
                      // bouton pour accéder au menu des niveaux, méthode identique au précédent, juste la redirection est différente
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
                              list = [];
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => FourthPage(),
                              ));
                            },
                          ),
                        ))
                      ])),
                      // bouton pour recommencer, méthode identique au précédent, juste la redirection est différente
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
                              list = [];
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => FifthPage()),
                              );
                            },
                          ),
                        ))
                      ])),
                    ],
                  )));
        },
      );
    }

    // fonction identique à "ajouter" mais avec une image différente
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
                        .min, // taille du "pop-up" le plus petit possible
                    children: <Widget>[
                      Image.asset(
                        'assets/dragon_content.png', // lien pour l'image
                      ),
                      Flexible(
                          // utilisation de flexible et de expanded pour la bonne adaptation de la taille
                          child: Row(children: <Widget>[
                        Expanded(
                            child: Container(
                          margin: new EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Text(
                              'Temps écoulé !\nScore :' +
                                  ' $_totalScore' + // affiche le score
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
                              // quand le bouton est sélectionné
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => EighthfacilePage(
                                  //page pour la correction
                                  list: list,
                                  totalScore: _totalScore,
                                ),
                              ));
                            },
                          ),
                        ))
                      ])),
                      // bouton pour accéder au menu des niveaux, méthode identique au précédent, juste la redirection est différente
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
                              list = [];
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => FourthPage(),
                              ));
                            },
                          ),
                        ))
                      ])),
                      // bouton pour recommencer, méthode identique au précédent, juste la redirection est différente
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
                              list = [];
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => FifthPage()),
                              );
                            },
                          ),
                        ))
                      ])),
                    ],
                  )));
        },
      );
    }

    if (_totalScore < 6) {
      // quand le score est mauvais
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
                      builder: (context) => FourthPage()), //renvoi à la page 4
                );
              },
            ),
            title: Text(
              'Niveau facile', // texte de la appBar
              style: TextStyle(
                fontSize: 35,
              ),
            ),
            centerTitle: true, //centre le texte
            backgroundColor: e, //couleur de la appBar
          ),
          body: _questionIndex < questions.length //condition

              ? Column(
                  // tant qu'il y a des questions

                  crossAxisAlignment: CrossAxisAlignment.center,

                  // Alors
                  // bloc pour le chrono
                  children: <Widget>[
                    Row(children: <Widget>[
                      Expanded(
                          child: Container(
                              margin: new EdgeInsets.fromLTRB(0, 50, 0, 0),
                              // création du chrono
                              child: CircularCountDownTimer(
                                width: MediaQuery.of(context).size.width / 3.5,
                                height: MediaQuery.of(context).size.height /
                                    3.5, // la taille
                                duration: 50, // le temps
                                // différents paramètres pour le chrono
                                fillColor: e,
                                ringColor: Colors.white,
                                controller: _controller,
                                backgroundColor: Colors.white,
                                strokeWidth: 15.0,
                                strokeCap: StrokeCap.round,
                                isTimerTextShown: true,
                                isReverse: false,
                                onComplete: () {
                                  ajouter(); // ouverture du "pop-up" quand le temps est fini
                                },
                                textStyle: TextStyle(
                                    fontSize: 50.0,
                                    color: Colors.black), // style de l'écriture
                              )))
                    ]),

                    Quiz(
                      // utilisation du fichier Quiz
                      answerQuestion: _answerQuestion,
                      questionIndex: _questionIndex,
                      questions: questions,
                    ) //Quiz
                  ],
                )
              : Column(
                  // quand le quiz est fini

                  mainAxisAlignment: MainAxisAlignment.center, //centre

                  // Alors
                  children: <Widget>[
                    Image(
                        image: AssetImage(
                            'assets/dragon_triste.png')), // lien pour l'image
                    Expanded(
                        child: Container(
                            margin:
                                new EdgeInsets.fromLTRB(15.0, 45.0, 15.0, 0),
                            child: AutoSizeText(
                              // pour que la taille de l'écriture s'adapte toute seule
                              'Questionnaire terminé\nscore : ' +
                                  '$_totalScore' +
                                  ' /10\n', // écriture du score
                              style: TextStyle(
                                  // style du texte
                                  fontSize: 35,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ))),
                    // bouton pour accéder aux corrections
                    Flexible(
                        // flexible et Expanded pour une bonne adaptation
                        child: Row(// création d'une ligne
                            children: <Widget>[
                      Expanded(
                          child: Container(
                              margin: new EdgeInsets.fromLTRB(
                                  15.0, 30.0, 15.0, 2.0),
                              child: RaisedButton(
                                // création du bouton
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      15.0), // arrondir les angles
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 0),
                                textColor: Colors.white,
                                color: e, // couleur du bouton
                                child: AutoSizeText(
                                  // taille du texte automatique
                                  'Corrections',
                                  maxLines: 1, // une ligne maximum
                                  style: TextStyle(
                                    // style du texte
                                    fontSize: 35,
                                    color: Colors.white.withOpacity(0.9),
                                  ),
                                ),
                                onPressed: () {
                                  // quand le bouton est utilisé
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => EighthfacilePage(
                                      list:
                                          list, // utilise la Page 8 en mode facile
                                      totalScore: _totalScore,
                                    ),
                                  ));
                                },
                              )))
                    ])),

                    // identique au bouton précédent, juste la redirection change
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
                                  color: e,
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
                        // identique au bouton précédent, juste la redirection change
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
                            color: e,
                            child: AutoSizeText(
                              'Nouveau',
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 35,
                                color: Colors.white.withOpacity(0.9),
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => FifthPage(),
                                ),
                              );
                            },
                          ),
                        )),
                      ],
                    ))
                  ],
                ));
    } else {
      // identique au scaffold précédent mais utilisé quand le score est bon

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
                      builder: (context) => FourthPage()), //renvoie à la page 4
                );
              },
            ),
            title: Text(
              'Niveau facile', // texte de la appBar
              style: TextStyle(
                fontSize: 35,
              ),
            ),
            centerTitle: true, //centre le texte
            backgroundColor: e, //couleur de la appBar
          ),
          body: _questionIndex < questions.length // Condition

              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  // Alors
                  children: <Widget>[
                    Row(children: <Widget>[
                      Expanded(
                          child: Container(
                              margin: new EdgeInsets.fromLTRB(0, 50, 0, 0),
                              // création du chrono
                              child: CircularCountDownTimer(
                                width: MediaQuery.of(context).size.width / 3.5,
                                height: MediaQuery.of(context).size.height /
                                    3.5, // la taille
                                duration: 50, // le temps
                                fillColor: e,
                                ringColor: Colors.white,
                                controller: _controller,
                                backgroundColor: Colors.white,
                                strokeWidth: 15.0,
                                strokeCap: StrokeCap.round,
                                isTimerTextShown: true,
                                isReverse: false,
                                onComplete: () {
                                  ajouter2(); // ouverture du pop up quand le temps est fini
                                },
                                textStyle: TextStyle(
                                    fontSize: 50.0,
                                    color: Colors.black), // style de l'écriture
                              )))
                    ]),

                    Quiz(
                      answerQuestion: _answerQuestion,
                      questionIndex: _questionIndex,
                      questions: questions,
                    ) //Quiz
                  ],
                )
              : Column(
                  // quand le quiz est fini
                  // Sinon

                  mainAxisAlignment: MainAxisAlignment.center,

                  // Alors
                  children: <Widget>[
                    Image(
                        image: AssetImage(
                            'assets/dragon_content.png')), // lien pour l'image
                    Expanded(
                        child: Container(
                            margin:
                                new EdgeInsets.fromLTRB(15.0, 45.0, 15.0, 0),
                            child: AutoSizeText(
                              'Questionnaire terminé\nscore : ' +
                                  '$_totalScore' +
                                  ' /10\n', // écriture du score
                              style: TextStyle(
                                  // style du texte
                                  fontSize: 35,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ))),
                    // bouton pour accéder aux corrections
                    Flexible(
                        // flexible et Expanded pour une bonne adaptation
                        child: Row(// création d'une ligne
                            children: <Widget>[
                      Expanded(
                          child: Container(
                              margin: new EdgeInsets.fromLTRB(
                                  15.0, 30.0, 15.0, 2.0),
                              child: RaisedButton(
                                // création du bouton
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      15.0), // arrondir les angles
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 0),
                                textColor: Colors.white,
                                color: e, // couleur du bouton
                                child: AutoSizeText(
                                  // taille du texte automatique
                                  'Corrections',
                                  maxLines: 1, // une ligne maximum
                                  style: TextStyle(
                                    // style du texte
                                    fontSize: 35,
                                    color: Colors.white.withOpacity(0.9),
                                  ),
                                ),
                                onPressed: () {
                                  // quand le bouton est utilisé
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => EighthfacilePage(
                                      list:
                                          list, // utilise la Page 8 en mode facile
                                      totalScore: _totalScore,
                                    ),
                                  ));
                                },
                              )))
                    ])),

                    // identique au bouton précédent, juste la redirection change
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
                                  color: e,
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
                        // identique au bouton précédent, juste la redirection change
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
                            color: e,
                            child: AutoSizeText(
                              'Nouveau',
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 35,
                                color: Colors.white.withOpacity(0.9),
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => FifthPage(),
                                ),
                              );
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
