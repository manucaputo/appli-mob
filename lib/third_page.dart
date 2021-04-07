import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  static const tag = "third_page";

  void main() {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ThirdPage(),
    ));
  }

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Table de 1'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text('\n'),
            Flexible(
                child: Row(children: <Widget>[
              Container(
                  margin: new EdgeInsets.fromLTRB(120, 0.0, 0.0, 0.0),
                  color: Colors.black26,
                  padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
                  child: Text(
                    '1 x 1 = 1',
                    style: TextStyle(fontSize: 30),
                  )),
            ]))
          ],
        ));
  }
}
