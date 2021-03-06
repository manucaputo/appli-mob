import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'Eighthmoyen.dart';
import 'fourth_page.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'dart:math';

// identique à la page "Sixth_page", sauf qu'il y a pas de chrono et donc pas de "pop-up"
// cette page est pour le niveau "moyen"
class SeventhPage extends StatefulWidget {
  int value;
  int totalScore;
  List<String> list = [];
  SeventhPage({this.value, this.totalScore, this.list});

  static const tag = "seventh_page";
  void main() {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SeventhPage(
        value: value,
        totalScore: totalScore,
        list: list,
      ),
      // theme: ThemeData.dark(),
    ));
  }

  @override
  _SeventhPageState createState() => _SeventhPageState(
        value,
        totalScore,
        list,
      );
}

class _SeventhPageState extends State<SeventhPage> {
  int value;
  int totalScore;
  List<String> list = [];

  _SeventhPageState(this.value, this.totalScore, this.list);

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

    int randomNumber2 = random2.nextInt(10);
    String random_string2 = randomNumber2.toString();

    int randomNumber3 = random3.nextInt(10) + 1;
    String random_string3 = randomNumber3.toString();

    int result = randomNumber2 * randomNumber3;
    String resultat = result.toString();

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
      });
    }

    if (totalScore < 6) {
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
              'Niveau moyen',
              style: TextStyle(fontSize: 35),
            ),
            centerTitle: true,
            backgroundColor: e,
          ),
          body: value < 10 // Condition
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  // Alors

                  children: <Widget>[
                    AutoSizeText(
                      //je pose la question
                      '$random_string2' + ' x ' + '$random_string3' + ' = ...',
                      maxLines: 1,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        color: Colors.black.withOpacity(0.9),
                      ),
                    ),
                    Padding(
                        //je laisse l'utilisateur encoder sa valeur
                        padding:
                            EdgeInsets.symmetric(vertical: 60, horizontal: 30),
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
                                  color: Colors.black, fontSize: 24.0),
                            ),
                          ),
                        )),
                    RaisedButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
                      textColor: Colors.white,
                      color: c,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: AutoSizeText(
                        'Question suivante',
                        maxLines: 1,
                        style: TextStyle(fontSize: 35),
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
                            pageBuilder: (context, animation1, animation2) =>
                                SeventhPage(
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
                  ],
                )
              : Column(
                  // Sinon

                  mainAxisAlignment: MainAxisAlignment.center,

                  // Alors
                  children: <Widget>[
                    Image(image: AssetImage('assets/dragon_triste.png')),
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
                                    builder: (context) => EighthmoyenPage(
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
                                builder: (context) => SeventhPage(
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
              'Niveau moyen',
              style: TextStyle(fontSize: 35),
            ),
            centerTitle: true,
            backgroundColor: e,
          ),
          body: value < 10 // Condition
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  // Alors

                  children: <Widget>[
                    AutoSizeText(
                      //je pose la question
                      '$random_string2' + ' x ' + '$random_string3' + ' = ...',
                      maxLines: 1,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        color: Colors.black.withOpacity(0.9),
                      ),
                    ),
                    Padding(
                        //je laisse l'utilisateur encoder sa valeur
                        padding:
                            EdgeInsets.symmetric(vertical: 60, horizontal: 30),
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
                                  color: Colors.black, fontSize: 24.0),
                            ),
                          ),
                        )),
                    RaisedButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
                      textColor: Colors.white,
                      color: c,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: AutoSizeText(
                        'Question suivante',
                        maxLines: 1,
                        style: TextStyle(fontSize: 35),
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
                            pageBuilder: (context, animation1, animation2) =>
                                SeventhPage(
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
                                    builder: (context) => EighthmoyenPage(
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
                                builder: (context) => SeventhPage(
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
