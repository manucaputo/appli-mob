import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import './quiz.dart';
import 'Eighth.dart';
import 'Eighthfacile.dart';
import 'fourth_page.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'dart:math';

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
  CountDownController _controller = CountDownController();

  var _totalScore = 0;
  var _questionIndex = 0;
  List<String> list =[];

  Random random2 = new Random();
  Random random3 = new Random();
  Random random4 = new Random();

  @override
  Widget build(BuildContext context) {
    int randomNumber2 = random2.nextInt(10);
    String random_string2 = randomNumber2.toString();

    int randomNumber3 = random3.nextInt(10) + 1;
    String random_string3 = randomNumber3.toString();

    int randomNumber4 = random4.nextInt(3);

    int result = randomNumber2 * randomNumber3;
    String resultat = result.toString();
    int result2 = (randomNumber2 * randomNumber3) + 1;
    String resultat2 = result2.toString();
    int result3 = (randomNumber2 * randomNumber3) + 3;
    String resultat3 = result3.toString();
    int result4 = (randomNumber2 * randomNumber3) - 2;
    String resultat4 = result4.toString();

    final questions = [
      if (randomNumber4 == 0) // question_1
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
      if (randomNumber4 == 0) // question_2
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

    /* if (randomNumber4 == 0) // question_2
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [resultat, resultat2, resultat3, resultat4, 'score'],
        }
      else if (randomNumber4 == 1)
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [resultat3, resultat, resultat4, resultat2],
        }


      if (randomNumber4 == 0) // question_10
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [resultat, resultat2, resultat3, resultat4],
        }
      else if (randomNumber4 == 1)
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [resultat3, resultat, resultat4, resultat2],
        }
      else if (randomNumber4 == 2)
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [resultat4, resultat2, resultat, resultat3],
        }
      else
        {
          'questionText': random_string2 + ' x ' + random_string3 + ' = ?',
          'answers': [resultat2, resultat4, resultat3, resultat],
        },
    ];

      */

    void _answerQuestion(int score) {
      _totalScore += score;
      if(score == 0)
        {
          list.add('$random_string2');
          list.add('$random_string3');
          list.add('$resultat');


        }

      setState(() {
        _questionIndex = _questionIndex + 1;
      });

      //print(_questionIndex);

      if (_questionIndex < questions.length) {
      } else {
        //print('No more questions!');
      }
    }

    void _resetQuiz() {
      setState(() {
        _questionIndex = 0;
        _totalScore = 0;
      });
    }

    Future<void> ajouter() async {
      await showDialog<void>(
        context: context,
        barrierDismissible: false, // si on appuie à l’extérieur
        //ça ne va pas disparaitre
        builder: (BuildContext dialogContext) {
          return AlertDialog(
              title: Text('Temps écoulé : \n\n' + '$_totalScore' + '/10'),
              content: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    child: Text('Retour'),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FourthPage(),
                      ));
                    },
                  ),
                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    child: Text('Recommencer'),
                    onPressed: () {
                      _resetQuiz();
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FifthPage(),
                      ));
                    },
                  ),
                ],
              ));
        },
      );
    }

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
            'Quiz débutant',
            style: TextStyle(
              fontSize: 35,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: _questionIndex < questions.length //&& _counter>0 // Condition

            ? Column(
                mainAxisAlignment: MainAxisAlignment.start,

                // Alors
                children: <Widget>[
                  /*Image(image: AssetImage('assets/cafe.jpg')),
                  Text('\n'),*/

                  /* Countdown(animation: StepTween(
                    begin: limitTime,
                    end: 0,
                  ).animate(_controller)),
                  */

                  CircularCountDownTimer(
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: MediaQuery.of(context).size.height / 2.5,
                    duration: 25,
                    fillColor: Colors.blueGrey,
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
                    textStyle: TextStyle(fontSize: 50.0, color: Colors.black),
                  ),
                  /*Question(
                  questions[_questionIndex]['questionText'],
                ),
                ...(questions[_questionIndex]['answers'] as List<String>)
                    .map((answer) {
                  return Answer(_answerQuestion, answer);
                }).toList() */

                  Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: questions,
                  ) //Quiz
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
                    margin: new EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 0),
                    child: AutoSizeText(
                      'Questionnaire terminé\n' +
                          '$_totalScore' +
                          ' /10\n',
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ))),

            Flexible(
                child: Row(
                    children: <Widget>[
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
                                    builder: (context) => EighthfacilePage(list: list, totalScore: _totalScore,),

                                  ));

                                },
                              )

                          ))])),


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
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => FourthPage(),
                                ));
                              },
                            ))),
                    Expanded(
                        child: Container(
                          margin: new EdgeInsets.fromLTRB(15.0, 40.0, 15.0, 2.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 0),
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



                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => FifthPage()
                                  ,
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
