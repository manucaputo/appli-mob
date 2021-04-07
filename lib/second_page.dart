import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  static const tag = "second_page";

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('Choisis ta table !'),
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
                      onPressed: () {},
                      color: Colors.black26,
                      padding:
                          EdgeInsets.symmetric(vertical: 40.0, horizontal: 15),
                      child: Text(
                        '1',
                        style: TextStyle(fontSize: 40),
                      )),
                ),
                Container(
                  margin: new EdgeInsets.fromLTRB(40.0, 20.0, 0.0, 10.0),
                  child: FlatButton(
                      onPressed: () {},
                      color: Colors.black26,
                      padding:
                          EdgeInsets.symmetric(vertical: 40.0, horizontal: 15),
                      child: Text(
                        '2',
                        style: TextStyle(fontSize: 40),
                      )),
                ),
                Container(
                  margin: new EdgeInsets.fromLTRB(40.0, 20.0, 0.0, 10.0),
                  child: FlatButton(
                      onPressed: () {},
                      color: Colors.black26,
                      padding:
                          EdgeInsets.symmetric(vertical: 40.0, horizontal: 15),
                      child: Text(
                        '3',
                        style: TextStyle(fontSize: 40),
                      )),
                ),
              ])),
              Flexible(
                  child: Row(children: <Widget>[
                Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 10.0),
                  child: FlatButton(
                      onPressed: () {},
                      color: Colors.black26,
                      padding:
                          EdgeInsets.symmetric(vertical: 40.0, horizontal: 15),
                      child: Text(
                        '4',
                        style: TextStyle(fontSize: 40),
                      )),
                ),
                Container(
                  margin: new EdgeInsets.fromLTRB(40.0, 20.0, 0.0, 10.0),
                  child: FlatButton(
                      onPressed: () {},
                      color: Colors.black26,
                      padding:
                          EdgeInsets.symmetric(vertical: 40.0, horizontal: 15),
                      child: Text(
                        '5',
                        style: TextStyle(fontSize: 40),
                      )),
                ),
                Container(
                  margin: new EdgeInsets.fromLTRB(40.0, 20.0, 0.0, 10.0),
                  child: FlatButton(
                      onPressed: () {},
                      color: Colors.black26,
                      padding:
                          EdgeInsets.symmetric(vertical: 40.0, horizontal: 15),
                      child: Text(
                        '6',
                        style: TextStyle(fontSize: 40),
                      )),
                ),
              ])),
              Flexible(
                  child: Row(children: <Widget>[
                Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 10.0),
                  child: FlatButton(
                      onPressed: () {},
                      color: Colors.black26,
                      padding:
                          EdgeInsets.symmetric(vertical: 40.0, horizontal: 15),
                      child: Text(
                        '7',
                        style: TextStyle(fontSize: 40),
                      )),
                ),
                Container(
                  margin: new EdgeInsets.fromLTRB(40.0, 20.0, 0.0, 10.0),
                  child: FlatButton(
                      onPressed: () {},
                      color: Colors.black26,
                      padding:
                          EdgeInsets.symmetric(vertical: 40.0, horizontal: 15),
                      child: Text(
                        '8',
                        style: TextStyle(fontSize: 40),
                      )),
                ),
                Container(
                  margin: new EdgeInsets.fromLTRB(40.0, 20.0, 0.0, 10.0),
                  child: FlatButton(
                      onPressed: () {},
                      color: Colors.black26,
                      padding:
                          EdgeInsets.symmetric(vertical: 40.0, horizontal: 15),
                      child: Text(
                        '9',
                        style: TextStyle(fontSize: 40),
                      )),
                ),
              ])),
              Flexible(
                  child: Row(children: <Widget>[
                Container(
                  margin: new EdgeInsets.fromLTRB(150.0, 20.0, 0.0, 10.0),
                  child: FlatButton(
                      onPressed: () {},
                      color: Colors.black26,
                      padding:
                          EdgeInsets.symmetric(vertical: 40.0, horizontal: 15),
                      child: Text(
                        '10',
                        style: TextStyle(fontSize: 40),
                      )),
                ),
              ]))
            ]));
  }
}
