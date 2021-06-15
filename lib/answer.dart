import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

// ce fichier donne le visiuel des différents propositions des réponses pour le quiz
class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    Color e = Color.fromRGBO(103, 151, 59, 1.0);
    Color f = Color.fromRGBO(84, 125, 42, 1.0);
    Color c = Color.fromRGBO(147, 219, 91, 0.6);
    Color a = Color.fromRGBO(201, 243, 167, 1.0);

    Color b = Color.fromRGBO(255, 255, 132, 0.93);
    Color d = Color.fromRGBO(132, 69, 60, 1);

    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [   // pour aligner au centre
      Row(children: <Widget>[ // en ligne
        Expanded(
            child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(color: f, width: 8.0)),
          margin: new EdgeInsets.fromLTRB(20, 5.0, 20, 2),  // la position
          child: FlatButton(
            //création d'un bouton

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  6.0), // Pour arrondire les angles du bouton
            ),
            padding:
                EdgeInsets.symmetric(vertical: 10, horizontal: 10), // padidng
            // les paramètres pour le texte
            color: Colors.white,
            textColor: f,
            child: AutoSizeText(answerText,
                maxLines: 1,
                style: TextStyle(
                  //style du texte
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
            onPressed: selectHandler,
          ),
        ))
      ])
    ]);
  }
}
