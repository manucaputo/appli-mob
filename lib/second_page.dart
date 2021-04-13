import 'package:flutter/material.dart';
import 'third_page.dart';

class SecondPage extends StatefulWidget {

  static const tag = "second_page";

  void main() {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecondPage(),
    ));
  }

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

String value;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.75),
        appBar: AppBar(
          title: Text(
            'Choisis ta table !',
            style: TextStyle(fontSize: 35),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,

            children: <Widget>[

              Flexible(
                  child: Row(children: <Widget>[
                Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 10.0),
                  child: FlatButton(
                      onPressed: () {
                        value='1';
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(value : value),
                        ));

                      },
                      color: Colors.blueGrey.withOpacity(1),
                      padding:
                          EdgeInsets.symmetric(vertical: 40.0, horizontal: 15),
                      child: Text(
                        '1',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                ),
                Container(
                  margin: new EdgeInsets.fromLTRB(40.0, 20.0, 0.0, 10.0),
                  child: FlatButton(
                      onPressed: () {
                        value='2';
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(value : value),
                        ));

                      },
                      color: Colors.blueGrey.withOpacity(1),
                      padding:
                          EdgeInsets.symmetric(vertical: 40.0, horizontal: 15),
                      child: Text(
                        '2',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                ),
                Container(
                  margin: new EdgeInsets.fromLTRB(40.0, 20.0, 0.0, 10.0),
                  child: FlatButton(
                      onPressed: () {},
                      color: Colors.blueGrey.withOpacity(1),
                      padding:
                          EdgeInsets.symmetric(vertical: 40.0, horizontal: 15),
                      child: Text(
                        '3',
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
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 10.0),
                  child: FlatButton(
                      onPressed: () {

                      },
                      color: Colors.blueGrey.withOpacity(1),
                      padding:
                          EdgeInsets.symmetric(vertical: 40.0, horizontal: 15),
                      child: Text(
                        '4',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                ),
                Container(
                  margin: new EdgeInsets.fromLTRB(40.0, 20.0, 0.0, 10.0),
                  child: FlatButton(
                      onPressed: () {},
                      color: Colors.blueGrey.withOpacity(1),
                      padding:
                          EdgeInsets.symmetric(vertical: 40.0, horizontal: 15),
                      child: Text(
                        '5',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                ),
                Container(
                  margin: new EdgeInsets.fromLTRB(40.0, 20.0, 0.0, 10.0),
                  child: FlatButton(
                      onPressed: () {},
                      color: Colors.blueGrey.withOpacity(1),
                      padding:
                          EdgeInsets.symmetric(vertical: 40.0, horizontal: 15),
                      child: Text(
                        '6',
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
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 10.0),
                  child: FlatButton(
                      onPressed: () {},
                      color: Colors.blueGrey.withOpacity(1),
                      padding:
                          EdgeInsets.symmetric(vertical: 40.0, horizontal: 15),
                      child: Text(
                        '7',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                ),
                Container(
                  margin: new EdgeInsets.fromLTRB(40.0, 20.0, 0.0, 10.0),
                  child: FlatButton(
                      onPressed: () {},
                      color: Colors.blueGrey.withOpacity(1),
                      padding:
                          EdgeInsets.symmetric(vertical: 40.0, horizontal: 15),
                      child: Text(
                        '8',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                ),
                Container(
                  margin: new EdgeInsets.fromLTRB(40.0, 20.0, 0.0, 10.0),
                  child: FlatButton(
                      onPressed: () {},
                      color: Colors.blueGrey.withOpacity(1),
                      padding:
                          EdgeInsets.symmetric(vertical: 40.0, horizontal: 15),
                      child: Text(
                        '9',
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
                  margin: new EdgeInsets.fromLTRB(150.0, 20.0, 0.0, 10.0),
                  child: FlatButton(
                      onPressed: () {},
                      color: Colors.blueGrey.withOpacity(1),
                      padding:
                          EdgeInsets.symmetric(vertical: 40.0, horizontal: 15),
                      child: Text(
                        '10',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                ),
              ]))
            ]));
  }
}
