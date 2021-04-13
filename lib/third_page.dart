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
    if (value == '1') {
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
                      padding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 20),
                      color: Colors.blueGrey.withOpacity(0.4),
                      child: Text(

                        '1 x 1 = 1 \n\n2 x 1 = 2 \n\n3 x 1 = 3 \n\n4 x 1 = 4 \n\n5 x 1 = 5 \n\n6 x 1 = 6 \n\n7 x 1 = 7 \n\n8 x 1 = 8 \n\n9 x 1 = 9 \n\n10 x 1 = 10',
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
    else if (value=='2'){
      return Scaffold(

          backgroundColor: Colors.white.withOpacity(0.75),
          appBar: AppBar(
            title: Text(
              'Table de 2',
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
                      padding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 20),
                      color: Colors.blueGrey.withOpacity(0.4),
                      child: Text(

                        '1 x 2 = 1\n\n2 x 2 = 4\n\n3 x 2 = 6\n\n4 x 2 = 8\n\n5 x 2 = 10\n\n6 x 2 = 12\n\n7 x 2 = 14\n\n8 x 2 = 16\n\n9 x 2 = 18\n\n10 x 2 = 20',
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
  }

