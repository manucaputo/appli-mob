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
      width: 350,
      margin: new EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 5.0), //position


      child: Text(

        // On ajoute un Widget enfant de type Text
        widget.questionText, // On affiche le contenu de la variable questionText
        style: TextStyle(
            fontSize: 35,
            color: Colors.black,
            fontWeight: FontWeight.bold), // On applique une police de taille 28
        textAlign: TextAlign.center, // On centre le texte
      ), // Text
    ); // Container
  }
}
