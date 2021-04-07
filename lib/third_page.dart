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
  int a = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Table de 1',
            style: TextStyle(fontSize: 35),
          ),
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
                margin: new EdgeInsets.fromLTRB(115, 10.0, 0.0, 0.0),
                color: Colors.blueGrey.withOpacity(0.6),
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
                child: Text(
                  '1 * 1 = 1 \n\n2 x 1 = 2 \n\n3 x 1 = 3 \n\n4 x 1 = 4 \n\n5 x 1 = 5 \n\n6 x 1 = 6 \n\n7 x 1 = 7 \n\n8 x 1 = 8 \n\n9 x 1 = 9 \n\n10 x 1 = 10',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]))
          ],
        ));
  }
}
