import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'Eighth.dart';
import 'fourth_page.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'dart:math';
// cette page est pour le niveau difficele
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
    //création des valeurs randoms pour les calculs
    int randomNumber2 = random2.nextInt(10);
    String random_string2 = randomNumber2.toString();

    int randomNumber3 = random3.nextInt(10) + 1;
    String random_string3 = randomNumber3.toString();
    // calcul du résultat
    int result = randomNumber2 * randomNumber3;
    String resultat = result.toString();
/*
    void _answerQuestion(int score) {
      totalScore += score;

      setState(() {
        value = value + 1;
      });
    }

    void _resetQuiz() {
      setState(() {
        value = 0;
        totalScore = 0;

        list = [];
      });
    }*/
    // les 2 fonctions ajouter et ajouter permette l'affichage du pop up et sont identique à ceux de la page Fifth_page
    Future<void> ajouter() async {
      await showDialog<void>(
        context: context,
        barrierDismissible: false, // si on appuie à l’extérieur
        //ça ne va pas disparaitre
        builder: (BuildContext dialogContext) {
          return AlertDialog(

              //title: Text('Temps écoulé : ' + ' $totalScore' + ' / 10',style: TextStyle(fontSize: 25)),

              content: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 40, 20.0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        'assets/dragon_triste.png',
                      ),
                      Flexible(
                          child: Row(children: <Widget>[
                        Expanded(
                            child: Container(
                          margin: new EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child:
                              Text('Temps écoulé : ' + ' $totalScore' + ' / 10',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  )),
                        ))
                      ])),
                      Flexible(
                          child: Row(children: <Widget>[
                        Expanded(
                            child: Container(
                          margin: new EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 0),
                            textColor: Colors.white,
                            color: Colors.blue,
                            child: Text(
                              'Corrections',
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
                          ),
                        ))
                      ])),
          Flexible(
          child: Row(children: <Widget>[
                      Expanded(
                          child: Container(
                        margin: new EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                          textColor: Colors.white,
                          color: Colors.blue,
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
                      ))])),
          Flexible(
          child: Row(children: <Widget>[
                      Expanded(
                          child: Container(
                        margin: new EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                          textColor: Colors.white,
                          color: Colors.blue,
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
                          },
                        ),
                      ))])),
                    ],
                  )));
        },
      );
    }

    Future<void> ajouter2() async {
      await showDialog<void>(
        context: context,
        barrierDismissible: false, // si on appuie à l’extérieur
        //ça ne va pas disparaitre
        builder: (BuildContext dialogContext) {
          return AlertDialog(

            //title: Text('Temps écoulé : ' + ' $totalScore' + ' / 10',style: TextStyle(fontSize: 25)),

              content: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 40, 20.0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        'assets/dragon_content.png',
                      ),
                      Flexible(
                          child: Row(children: <Widget>[
                            Expanded(
                                child: Container(
                                  margin: new EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child:
                                  Text('Temps écoulé : ' + ' $totalScore' + ' / 10',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ))
                          ])),
                      Flexible(
                          child: Row(children: <Widget>[
                            Expanded(
                                child: Container(
                                  margin: new EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 0),
                                    textColor: Colors.white,
                                    color: Colors.blue,
                                    child: Text(
                                      'Corrections',
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
                                  ),
                                ))
                          ])),
                      Flexible(
                          child: Row(children: <Widget>[
                            Expanded(
                                child: Container(
                                  margin: new EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    padding:
                                    EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                                    textColor: Colors.white,
                                    color: Colors.blue,
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
                                ))])),
                      Flexible(
                          child: Row(children: <Widget>[
                            Expanded(
                                child: Container(
                                  margin: new EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    padding:
                                    EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                                    textColor: Colors.white,
                                    color: Colors.blue,
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
                                    },
                                  ),
                                ))])),
                    ],
                  )));

        },
      );
    }
    // quand le score est trop faible
    if (totalScore < 6) {
      return Scaffold(
          backgroundColor: Colors.white.withOpacity(0.75),
          appBar: AppBar(  //création de la appBar
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FourthPage()), //renvoi à la page FourthPage
                );
              },
            ),
            title: Text(
              'Quiz difficile',
              style: TextStyle(fontSize: 35),
            ),
            centerTitle: true,
            backgroundColor: Colors.blueGrey, //couleur de la appBar
          ),
          body: value < 10 // Condition
            //temps que toutes les questions ne sont pas faite
              ? Column(
                  //mainAxisAlignment: MainAxisAlignment.start,

                  // Alors

                  children: <Widget>[
                    /*Image(image: AssetImage('assets/cafe.jpg')),
                  Text('\n'),*/

                    /* Countdown(animation: StepTween(
                    begin: limitTime,
                    end: 0,
                  ).animate(_controller)),
                  */
                    //création du chrono identique à la page Fith_page, sauf que le temps est plus court car il y a un chrono sur chaque question
                    Expanded(
                        child: Container(
                            margin: new EdgeInsets.fromLTRB(0, 10, 0, 10.0),
                            child: CircularCountDownTimer(
                              width: MediaQuery.of(context).size.width / 3.75,
                              height: MediaQuery.of(context).size.height / 3.75,
                              duration: 5,
                              fillColor: Colors.blueGrey,
                              ringColor: Colors.white,
                              controller: _controller,
                              backgroundColor: Colors.white,
                              strokeWidth: 5.0,
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
                      //je pose la question
                      '$random_string2' + ' x ' + '$random_string3' + ' = ...',
                      maxLines: 1,
                      style: TextStyle( //style du texte
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
                            primaryColor: Colors.indigo[900],
                            primaryColorDark: Colors.white,
                          ),
                          child: TextField( // cadre pour encoder la valeur
                            onEditingComplete: () {},
                            // do nothing
                            textInputAction: TextInputAction.send,

                            autofocus: true,
                            controller: nameController, // enregistre la valeur
                            keyboardType: TextInputType.number, // permet d'avoir la clavier avec les chiffres

                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Entre ta réponse', // afiche " Entre ta réponse"
                              labelStyle: TextStyle(
                                  color: Colors.indigo[900], fontSize: 20.0),
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
                          color: Colors.indigo[900],
                          child: AutoSizeText(
                            'Question suivante',
                            maxLines: 1,
                            style: TextStyle(fontSize: 30),
                          ),
                          onPressed: () {
                            if (nameController.text == resultat) { // si le résultat est bon augmente le score de 1
                              totalScore += 1;
                            } else {          //enregistre les bonne valeurs quand le réponse est mauvaise
                              list.add('$random_string2');
                              list.add('$random_string3');
                              list.add('$resultat');
                            }
                            value += 1; // augmente le numéro de la question

                            Navigator.pushReplacement(  // enléve l'animation entre chaque question
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
              : Column(   // quand il y a plus de question
                  // Sinon

                  mainAxisAlignment: MainAxisAlignment.start,

                  // Alors
                  children: <Widget>[
                    Image(image: AssetImage('assets/MixMath.png')), //lien de l'image
                    Expanded(
                        child: Container(
                            margin:
                                new EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 0), //position
                            child: AutoSizeText(
                              'Questionnaire terminé\n' +
                                  '$totalScore' +
                                  ' /10\n',   //écriture du score
                              style: TextStyle(  //style du texte
                                  fontSize: 35,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ))),
                    //création du bouton pour avoir la correction
                    Flexible(
                        child: Row(children: <Widget>[
                      Expanded(
                          child: Container(
                              margin: new EdgeInsets.fromLTRB( //position
                                  15.0, 30.0, 15.0, 2.0),
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0), // arrondie les angles
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 0),
                                textColor: Colors.white,
                                color: Colors.blue,
                                child: AutoSizeText( //texte qui s'adapte
                                  'Corrections',
                                  maxLines: 1,
                                  style: TextStyle( //style du texte
                                    fontSize: 35,
                                    color: Colors.white.withOpacity(0.9),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => EighthPage( // direction page 8 avec les paramètres
                                      list: list,
                                      totalScore: totalScore,
                                    ),
                                  ));
                                },
                              )))
                    ])),
                    //identique au bouton précédent, sauf la direction qui permet de retourner au menu
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
                                  color: Colors.blue,
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
                        //identique au bouton précédent, sauf la direction qui permet de recommencer
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
    } else { // identique que le scaffold précédent mais quand le score est bon
      return Scaffold(
          backgroundColor: Colors.white.withOpacity(0.75),
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
              'Quiz difficile',
              style: TextStyle(fontSize: 35),
            ),
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
          ),
          body: value < 10 //&& _counter>0 // Condition

              ? Column(
                  //mainAxisAlignment: MainAxisAlignment.start,

                  // Alors

                  children: <Widget>[
                    /*Image(image: AssetImage('assets/cafe.jpg')),
                  Text('\n'),*/

                    /* Countdown(animation: StepTween(
                    begin: limitTime,
                    end: 0,
                  ).animate(_controller)),
                  */
                    Expanded(
                        child: Container(
                            margin: new EdgeInsets.fromLTRB(0, 10.0, 0, 10.0),
                            child: CircularCountDownTimer(
                              width: MediaQuery.of(context).size.width / 3.75,
                              height: MediaQuery.of(context).size.height / 3.75,
                              duration: 5,
                              fillColor: Colors.blueGrey,
                              ringColor: Colors.white,
                              controller: _controller,
                              backgroundColor: Colors.white,
                              strokeWidth: 5.0,
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
                            primaryColor: Colors.indigo[900],
                            primaryColorDark: Colors.white,
                          ),
                          child: TextField(
                            onEditingComplete: () {}, // do nothing
                            textInputAction: TextInputAction.send,

                            autofocus: true,
                            controller: nameController,
                            keyboardType: TextInputType.number,

                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Entre ta réponse',
                              labelStyle: TextStyle(
                                  color: Colors.indigo[900], fontSize: 20.0),
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
                          color: Colors.indigo[900],
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

                  mainAxisAlignment: MainAxisAlignment.start,

                  // Alors
                  children: <Widget>[
                    Image(image: AssetImage('assets/MixMath.png')),
                    Expanded(
                        child: Container(
                            margin:
                                new EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 0),
                            child: AutoSizeText(
                              'Questionnaire terminé\n' +
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
                                color: Colors.blue,
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
                                  color: Colors.blue,
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
