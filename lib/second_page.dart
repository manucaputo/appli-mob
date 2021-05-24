import 'package:auto_size_text/auto_size_text.dart';
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
  int value;

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
                Expanded(
                    child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      onPressed: () {
                        value = 1;
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(value: value),
                        ));
                      },
                      color: Colors.blueGrey.withOpacity(1),
                      padding:
                          EdgeInsets.symmetric(vertical: 35.0, horizontal: 0),
                      child: AutoSizeText(
                        '1',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                )),
                Expanded(
                    child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 20, 0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      onPressed: () {
                        value = 2;
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(value: value),
                        ));
                      },
                      color: Colors.blueGrey.withOpacity(1),
                      padding:
                          EdgeInsets.symmetric(vertical: 35.0, horizontal: 0),
                      child: AutoSizeText(
                        '2',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                )),
                Expanded(
                    child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 20, 0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      onPressed: () {
                        value = 3;
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(value: value),
                        ));
                      },
                      color: Colors.blueGrey.withOpacity(1),
                      padding:
                          EdgeInsets.symmetric(vertical: 35.0, horizontal: 0),
                      child: AutoSizeText(
                        '3',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                )),
              ])),
              Flexible(
                  child: Row(children: <Widget>[
                Expanded(
                    child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      onPressed: () {
                        value = 4;
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(value: value),
                        ));
                      },
                      color: Colors.blueGrey.withOpacity(1),
                      padding:
                          EdgeInsets.symmetric(vertical: 35.0, horizontal: 15),
                      child: AutoSizeText(
                        '4',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                )),
                Expanded(
                    child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      onPressed: () {
                        value = 5;
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(value: value),
                        ));
                      },
                      color: Colors.blueGrey.withOpacity(1),
                      padding:
                          EdgeInsets.symmetric(vertical: 35.0, horizontal: 15),
                      child: AutoSizeText(
                        '5',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                )),
                Expanded(
                    child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      onPressed: () {
                        value = 6;
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(value: value),
                        ));
                      },
                      color: Colors.blueGrey.withOpacity(1),
                      padding:
                          EdgeInsets.symmetric(vertical: 35.0, horizontal: 15),
                      child: AutoSizeText(
                        '6',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                )),
              ])),
              Flexible(
                  child: Row(children: <Widget>[
                Expanded(
                    child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      onPressed: () {
                        value = 7;
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(value: value),
                        ));
                      },
                      color: Colors.blueGrey.withOpacity(1),
                      padding:
                          EdgeInsets.symmetric(vertical: 35.0, horizontal: 15),
                      child: AutoSizeText(
                        '7',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                )),
                Expanded(
                    child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      onPressed: () {
                        value = 8;
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(value: value),
                        ));
                      },
                      color: Colors.blueGrey.withOpacity(1),
                      padding:
                          EdgeInsets.symmetric(vertical: 35.0, horizontal: 15),
                      child: AutoSizeText(
                        '8',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                )),
                Expanded(
                    child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      onPressed: () {
                        value = 9;
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(value: value),
                        ));
                      },
                      color: Colors.blueGrey.withOpacity(1),
                      padding:
                          EdgeInsets.symmetric(vertical: 35.0, horizontal: 15),
                      child: AutoSizeText(
                        '9',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                )),
              ])),
              Flexible(
                  child: Row(children: <Widget>[
                Expanded(
                    child: Container(
                  margin: new EdgeInsets.fromLTRB(155.0, 20.0, 155.0, 0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(),
                        ));
                      },
                      color: Colors.blueGrey.withOpacity(1),
                      padding:
                          EdgeInsets.symmetric(vertical: 35.0, horizontal: 15),
                      child: AutoSizeText(
                        '10',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                )),
              ]))
            ]));
  }
}
