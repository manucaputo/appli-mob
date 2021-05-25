
import 'package:flutter/material.dart';
// ce fichier donne le visiuel des différents propositions de réponse
class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      margin: new EdgeInsets.fromLTRB(18.0, 15.0, 0.0, 0.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0), // arrondie les angles
        ),
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 10), // padidng
        color: Colors.blueGrey,
        textColor: Colors.white,
        child: Text(answerText,
            style: TextStyle( //style du texte
              fontSize: 20,
            )),
        onPressed: selectHandler,
      ),
    );
  }
}
