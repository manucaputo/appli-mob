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


  Color e = Color.fromRGBO(103, 151, 59, 1.0);
  Color f = Color.fromRGBO(84, 125, 42, 1.0);
  Color c = Color.fromRGBO(147, 219, 91, 0.6);
  Color a = Color.fromRGBO(201, 243, 167, 1.0);

  Color b = Color.fromRGBO(255, 255, 132, 1);
  Color d = Color.fromRGBO(132, 69, 60,1);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: b,
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         // Text('\n'),
          Image.asset('assets/MixMath.png'),
          Text('\n \n  '),
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
                    fontFamily: 'MyFont',
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: f,
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
                      fontFamily: 'MyFont',
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: f,
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
