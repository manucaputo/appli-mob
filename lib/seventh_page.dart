import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'fourth_page.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class SeventhPage extends StatefulWidget {
  int value;
  int totalScore;
  SeventhPage({this.value, this.totalScore});

  static const tag = "seventh_page";
  void main() {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SeventhPage(
        value: value,
        totalScore: totalScore,
      ),
      // theme: ThemeData.dark(),
    ));
  }

  @override
  _SeventhPageState createState() => _SeventhPageState(
        value,
        totalScore,
      );
}

class _SeventhPageState extends State<SeventhPage> {
  int value;
  int totalScore;

  _SeventhPageState(this.value, this.totalScore);

  CountDownController _controller = CountDownController();

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

    Future<void> ajouter() async {
      await showDialog<void>(
        context: context,
        barrierDismissible: false, // si on appuie à l’extérieur
        //ça ne va pas disparaitre
        builder: (BuildContext dialogContext) {
          return AlertDialog(
              title: Text('Temps écoulé : \n\n' + '$totalScore' + '/10'),
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
                        builder: (context) =>
                            SeventhPage(value: value, totalScore: totalScore),
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
            'Quiz moyen',
            style: TextStyle(fontSize: 35),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: value < 10 //&& _counter>0 // Condition
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

                  Text(
                    //je pose la question
                    '$random_string2' + ' x ' + '$random_string3' + ' = ...',
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
                                color: Colors.indigo[900], fontSize: 24.0),
                          ),
                        ),
                      )),
                  RaisedButton(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
                    textColor: Colors.white,
                    color: Colors.indigo[900],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Text(
                      'Question suivante',
                      style: TextStyle(fontSize: 35),
                    ),
                    onPressed: () {
                      if (nameController.text == resultat) {
                        totalScore += 1;
                      }
                      value += 1;
                      print(totalScore);
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              SeventhPage(
                            value: value,
                            totalScore: totalScore,
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
                        '$totalScore' +
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
                            totalScore = 0;
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SeventhPage(
                                value: value,
                                totalScore: totalScore,
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