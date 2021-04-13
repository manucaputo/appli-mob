import 'package:flutter/material.dart';
import 'second_page.dart';

class ThirdPage extends StatefulWidget {
  String value;
  ThirdPage({this.value});
  static const tag = "third_page";

  void main() {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ThirdPage(value: value),
    ));
  }

  @override
  _ThirdPageState createState() => _ThirdPageState(value);
}

class _ThirdPageState extends State<ThirdPage> {


String value;
_ThirdPageState(this.value);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.75),
        appBar: AppBar(
          title: Text(
            'Table de 1',
            style: TextStyle(fontSize: 35),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: Column(
          //rossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Flexible(
                child: Row(children: <Widget>[
              Container(
                margin: new EdgeInsets.fromLTRB(110, 20, 0, 0),
                //color: Colors.blueGrey.withOpacity(0.6),
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
                color: Colors.blueGrey.withOpacity(0.4),
                child: Text(
                      value,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 27,
                      color: Colors.black.withOpacity(1),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]))
          ],
        ));
  }
}
