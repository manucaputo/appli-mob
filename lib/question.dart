import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  final String questionText;
  Question(this.questionText);

  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350, // largeur de la question
      margin: new EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 20.0), //position

      child: Text(
        // On ajoute un Widget enfant de type Text
        widget
            .questionText, // On affiche le contenu de la variable questionText
        style: TextStyle(
            fontSize: 35, // taille du texte
            color: Colors.black, // couleur du text
            fontWeight: FontWeight.bold), // en gras
        textAlign: TextAlign.center, // On centre le texte
      ), // Text
    ); // Container
  }
}
