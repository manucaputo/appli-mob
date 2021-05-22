import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'fourth_page.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class SixthPage extends StatefulWidget {
  int value;
  SixthPage({this.value});

  static const tag = "sixth_page";
  void main() {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SixthPage(value: value),
      theme: ThemeData.dark(),
    ));
  }

  @override
  _SixthPageState createState() => _SixthPageState(value);
}

class _SixthPageState extends State<SixthPage> {
  int value;

  _SixthPageState(this.value);

  CountDownController _controller = CountDownController();

  var _totalScore = 0;

  Random random2 = new Random();
  Random random3 = new Random();
  Random random4 = new Random();

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    int randomNumber2 = random2.nextInt(10);
    String random_string2 = randomNumber2.toString();

    int randomNumber3 = random3.nextInt(10) + 1;
    String random_string3 = randomNumber3.toString();

    int result = randomNumber2 * randomNumber3;
    String resultat = result.toString();

    void _answerQuestion(int score) {
      _totalScore += score;

      setState(() {
        value = value + 1;
      });
    }

    void _resetQuiz() {
      setState(() {
        value = 0;
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
                        builder: (context) => SixthPage(value: value),
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
          title: Text(
            'Quiz moyen',
            style: TextStyle(fontSize: 35),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: value < 3 //&& _counter>0 // Condition

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
                    width: MediaQuery.of(context).size.width / 4,
                    height: MediaQuery.of(context).size.height / 4,
                    duration: 5,
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
                  Text(
                    //je pose la question
                    '$random_string2' + ' x ' + '$random_string3' + ' = ?',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black.withOpacity(0.9),
                    ),
                  ),
                  Padding(
                    //je laisse l'utilisateur encoder sa valeur
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      onEditingComplete: () {}, // do nothing
                      textInputAction: TextInputAction.send,

                      autofocus: true,
                      controller: nameController,
                      keyboardType: TextInputType.number,

                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Entre ta réponse',
                      ),
                    ),
                  ),
                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    child: Text('Question suivante'),
                    onPressed: () {
                      print(nameController.text);
                      value += 1;
                      print(value);
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              SixthPage(
                            value: value,
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

                mainAxisAlignment: MainAxisAlignment.start,

                // Alors
                children: <Widget>[
                  Text('\n\n'),
                  Image(image: AssetImage('assets/cafe.jpg')),
                  Text(
                    '\n\n\nQuestionnaire terminé \n\n' +
                        '$_totalScore' +
                        ' /10\n',
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  Flexible(
                      child: Row(
                    children: <Widget>[
                      Container(
                          margin:
                              new EdgeInsets.fromLTRB(41.0, 20.0, 0.0, 10.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10),
                            textColor: Colors.white,
                            color: Colors.blue,
                            child: Text(
                              'Retour',
                              style: TextStyle(
                                fontSize: 34,
                                color: Colors.white.withOpacity(0.9),
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => FourthPage(),
                              ));
                            },
                          )),
                      Container(
                        margin: new EdgeInsets.fromLTRB(45.0, 20.0, 0.0, 10.0),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10),
                          textColor: Colors.white,
                          color: Colors.blue,
                          child: Text(
                            'Nouveau',
                            style: TextStyle(
                              fontSize: 32,
                              color: Colors.white.withOpacity(0.9),
                            ),
                          ),
                          onPressed: () {
                            value = 0;
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SixthPage(
                                value: value,
                              ),
                            ));
                          },
                        ),
                      ),
                    ],
                  ))
                ],
              ));
  }
}
