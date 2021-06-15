import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

// cette page permet de réaliser le quiz du niveau "débutant"
class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          //utilisation de question
          questions[questionIndex]['questionText'],
        ), //Question
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(answer['score']),
              answer[
                  'text']); // retroune la fonction "answerQuestion" avec comme paramètres "score" et "text"
        }).toList() // transforme en liste
      ],
    ); //Column
  }
}
