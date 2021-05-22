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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.75),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('\n \n'),
          Image(image: AssetImage('assets/cafe.jpg')),
          Text('\n \n \n \n \n'),
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
                color: Colors.blueGrey.withOpacity(1),
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15),
                child: Text(
                  'Afficher les tables',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white.withOpacity(0.9),
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
                  color: Colors.blueGrey.withOpacity(1),
                  padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
                  child: Text(
                    'Entraine-toi !',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white.withOpacity(0.9),
                    ),
                  )),
            ),
          ])),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          "Easy Maths !",
          style: TextStyle(
            fontSize: 35,
            color: Colors.white.withOpacity(1),
          ),
        ),
        centerTitle: true,
        /* actions: [
            Icon(Icons.access_alarm_outlined),
          ], */
      ),
    );
  }
}
