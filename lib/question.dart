import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,		// On prend toute la largeur de l’écran
      margin: EdgeInsets.all(10),		// On définit des marges de 10 pixel ;
      child: Text(				// On ajoute un Widget enfant de type Text
        questionText,			// On affiche le contenu de la variable questionText
        style: TextStyle(fontSize: 28),	// On applique une police de taille 28
        textAlign: TextAlign.center,		// On centre le texte
      ), // Text
    ); // Container
  }
}
