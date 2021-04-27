import 'dart:async';
import 'package:flutter/cupertino.dart';

import 'fourth_page.dart';
import 'package:flutter_app/count_down.dart';

import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
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
  //with SingleTickerProviderStateMixin

  CountDownController _controller = CountDownController();
  bool _isPause = false;
  var _questionIndex = 0;

  //final limitTime = 5;
  //AnimationController _controller;

  Random random2 = new Random();
  Random random3 = new Random();
  Random random4 = new Random();

  /*@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    if(_controller.isAnimating || _controller.isCompleted){
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
        vsync: this,duration: Duration(seconds: limitTime)
    );
    _controller.addListener(() {
      if(_controller.isCompleted){
        Navigator.pop(context);
        Navigator.pushNamed(context, FourthPage.tag);

      }
    });
    _controller.forward();

  }
*/

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
      if (randomNumber4 == 0) // question_2
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
      if (randomNumber4 == 0) // question_3
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
      if (randomNumber4 == 0) // question_4
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
      if (randomNumber4 == 0) // question_5
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
      if (randomNumber4 == 0) // question_6
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
      if (randomNumber4 == 0) // question_7
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
      if (randomNumber4 == 0) // question_8
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
      if (randomNumber4 == 0) // question_9
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

    void _answerQuestion() {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });

      print(_questionIndex);
      if (_questionIndex < questions.length) {
        print('randomNumber');
      } else {
        print('No more questions!');
      }
    }

    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.75),
      appBar: AppBar(
        title: Text(
          'Quiz débutant',
          style: TextStyle(fontSize: 35),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: _questionIndex < questions.length //&& _counter>0 // Condition

          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,

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
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.height / 2,
                  duration: 14,
                  fillColor: Colors.blueGrey,
                  ringColor: Colors.white,
                  controller: _controller,
                  backgroundColor: Colors.white,
                  strokeWidth: 10.0,
                  strokeCap: StrokeCap.round,
                  isTimerTextShown: true,
                  isReverse: false,
                  onComplete: () {
                    Alert(
                            context: context,
                            title: 'Done !',
                            style: AlertStyle(
                              isCloseButton: true,
                              isButtonVisible: false,
                              titleStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                              ),
                            ),
                            type: AlertType.success)
                        .show();
                  },
                  textStyle: TextStyle(fontSize: 50.0, color: Colors.black),
                ),
                Question(
                  questions[_questionIndex]['questionText'],
                ),
                ...(questions[_questionIndex]['answers'] as List<String>)
                    .map((answer) {
                  return Answer(_answerQuestion, answer);
                }).toList()
              ],
            )
          : Column(
              // Sinon

              mainAxisAlignment: MainAxisAlignment.start,

              // Alors
              children: <Widget>[
                Text('\n\n'),
                Image(image: AssetImage('assets/cafe.jpg')),
                Text(
                  '\n\n\n\n\nQuestionnaire terminé !',
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )
              ],
            ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            if (_isPause) {
              _isPause = false;
              _controller.resume();
            } else {
              _isPause = true;
              _controller.pause();
            }
          });
        },
        icon: Icon(_isPause ? Icons.play_arrow : Icons.pause),
        label: Text(_isPause ? 'Resume' : 'Pause'),
      ),
    );
  }
}
