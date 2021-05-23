import 'package:flutter/material.dart';
import 'package:flutter_app/fourth_page.dart';
import 'second_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  int number = 0;
  Color c = Color.fromRGBO(147, 219, 91,0.65);
  Color a = Color.fromRGBO(201, 243, 167,0.85);
  Color b = Color.fromRGBO(237, 244, 79,0.85);
  Color d = Color.fromRGBO(132, 69, 60,1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: c,
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         // Text('\n'),
          Image.asset('assets/MixMath.png'),
          Text('\n \n \n \n \n \n'),
          Flexible(
              child: Row(children: <Widget>[
            Container(
              width: 360,

              margin: new EdgeInsets.fromLTRB(15.0, 10.0, 0.0, 20.0),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(SecondPage.tag);
                },
                color: a,
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15),
                child: Text(
                  'Afficher les tables',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ])),
          Flexible(
              child: Row(children: <Widget>[
            Container(
              width: 360,
              margin: new EdgeInsets.fromLTRB(15.0, 10.0, 0.0, 20.0),
              child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(FourthPage.tag);
                  },
                  color: a,
                  padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
                  child: Text(
                    'Entraine-toi !',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                    ),
                  )),
            ),
          ])),
        ],
      ),
     /* appBar: AppBar(
        backgroundColor: c,

        /* actions: [
            Icon(Icons.access_alarm_outlined),
          ], */
      ),

      */
    );
  }
}
