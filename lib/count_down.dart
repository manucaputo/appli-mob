import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// cette class permet de créer le timer utiliser dans le niveau débutant et difficile
class Countdown extends AnimatedWidget {
  Countdown({Key key, this.animation}) : super(key: key, listenable: animation);
  Animation<int> animation;

  @override
  Widget build(BuildContext context) {
    Duration clockTimer = Duration(seconds: animation.value);
    var timerText = '${clockTimer.inMinutes.remainder(60).toString()} : '
        '${(clockTimer.inSeconds.remainder(60) % 60).toString().padLeft(2, '0')}';

    return Text(  // paramètre pour le texte
      '${timerText}',
      style: TextStyle(
        fontSize: 40,
        color: Theme.of(context).primaryColor,
      ),
    );


    throw UnimplementedError();
  }
}

//test
