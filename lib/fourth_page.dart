import 'package:flutter/material.dart';

import 'third_page.dart';

class FourthPage extends StatefulWidget {
  static const tag = "fourth_page";

  void main() {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FourthPage(),
    ));
  }

  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  int value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.75),
        appBar: AppBar(
          title: Text(
            'Entraine-toi !',
            style: TextStyle(fontSize: 35),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Image(image: AssetImage('assets/cafe.jpg')),
            Text('\n'),
            Flexible(
                child: Row(children: <Widget>[
              Container(
                width: 325,
                margin: new EdgeInsets.fromLTRB(35.0, 10.0, 0.0, 20.0),
                child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    onPressed: () {
                      value = 1;
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ThirdPage(value: value),
                      ));
                    },
                    color: Colors.blueGrey.withOpacity(1),
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 15),
                    child: Text(
                      'Niveau débutant',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white.withOpacity(0.9),
                      ),
                    )),
              ),
            ])),
            Flexible(
                child: Row(children: <Widget>[
              Container(
                width: 325,
                margin: new EdgeInsets.fromLTRB(35.0, 20.0, 0.0, 30.0),
                child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    onPressed: () {
                      value = 1;
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ThirdPage(value: value),
                      ));
                    },
                    color: Colors.blueGrey.withOpacity(1),
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 15),
                    child: Text(
                      'Niveau moyen',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white.withOpacity(0.9),
                      ),
                    )),
              ),
            ])),
            Flexible(
                child: Row(children: <Widget>[
              Container(
                margin: new EdgeInsets.fromLTRB(35.0, 10.0, 0.0, 30.0),
                width: 325,
                child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    onPressed: () {
                      value = 1;
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ThirdPage(value: value),
                      ));
                    },
                    color: Colors.blueGrey.withOpacity(1),
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 15),
                    child: Text(
                      'Niveau expert',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white.withOpacity(0.9),
                      ),
                    )),
              ),
            ]))
          ],
        ));
  }
}
