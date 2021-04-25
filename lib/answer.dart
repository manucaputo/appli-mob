import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      margin: new EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 5.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 10),
        color: Colors.blueGrey,
        textColor: Colors.white,
        child: Text(answerText,
            style: TextStyle(
              fontSize: 25,
            )),
        onPressed: selectHandler,
      ),
    );
  }
}
