import 'dart:ffi';
import 'dart:math';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/home_page.dart';
import 'package:flutter_app/seventh_page.dart';
import 'package:flutter_app/sixth_page.dart';
import 'fourth_page.dart';
import 'sixth_page.dart';
import 'fifth_page.dart';

class EighthPage extends StatefulWidget {
  static const tag = "eighth_page";
  List<String> list =[];
  int totalScore;
  EighthPage({this.list, this.totalScore});

  void main() {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EighthPage(list: list, totalScore: totalScore,),
    ));
  }

  @override
  _EighthPageState createState() => _EighthPageState(list, totalScore);
}

class _EighthPageState extends State<EighthPage> {
  int value;
  int totalScore;
  List<String> list =[];
  String b;







  _EighthPageState(this.list, this.totalScore);

  @override
  Widget build(BuildContext context) {

    int final_score = 10 - totalScore;
    double d = list.length/3;
    int d2 = d.toInt();


    return Scaffold(

        backgroundColor: Colors.white.withOpacity(0.75),

        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FourthPage()),
              );
            },
          ),
          title: Text(
            'Corrections',
            style: TextStyle(fontSize: 35),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),


        body: ListView(








          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                        margin: new EdgeInsets.fromLTRB(
                            15.0, 25.0, 15.0, 0),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 0),
                          textColor: Colors.white,
                          color: Colors.blue,
                          child: AutoSizeText(
                            'Retour',
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white.withOpacity(0.9),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => FourthPage(),
                            ));
                          },
                        ))),
                Expanded(
                    child: Container(
                      margin: new EdgeInsets.fromLTRB(15.0, 25.0, 15.0, 2.0),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        padding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                        textColor: Colors.white,
                        color: Colors.blue,
                        child: AutoSizeText(
                          'Nouveau',
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.white.withOpacity(0.9),
                          ),
                        ),
                        onPressed: () {
                          value = 0;
                          totalScore=0;

                          list=[];
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SixthPage(
                              value: value,
                              totalScore: totalScore,
                              list: list,
                            ),
                          ));
                        },
                      ),
                    )),
              ],
            ),
            Row(
                children: <Widget>[
                  Expanded(
                      child: Container(

                          margin: new EdgeInsets.fromLTRB(5.0, 15.0, 5, 0),
                          child: AutoSizeText('$d2' + ' erreurs :',

                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 30,
                                decoration : TextDecoration.underline,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,

                          )))]),

            for (var i=0; i<list.length-1; i=i+3)

                Row(
                        children: <Widget>[
                    Expanded(
                    child: Container(
                      margin: new EdgeInsets.fromLTRB(5.0, 20.0, 5, 2),
                      child: AutoSizeText(list[i] + ' x ' + list[i+1] + ' = ' + list[i+2] ,
                              maxLines: 1,
                              style: TextStyle(
                                  fontSize: 30,

                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,

                        )))]),



          ],
        ));
  }
}