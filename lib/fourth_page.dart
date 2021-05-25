import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/home_page.dart';
import 'package:flutter_app/seventh_page.dart';
import 'package:flutter_app/sixth_page.dart';
import 'sixth_page.dart';
import 'fifth_page.dart';

class FourthPage extends StatefulWidget {
  static const tag = "fourth_page";


  void main() {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      /* routes: {
            HomePage.tag: (context) => HomePage(),
         },
*/
      home: FourthPage(),
    ));
  }

  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  int value;
  int totalScore;
  List<String> list =[];

  @override
  Widget build(BuildContext context) {
    Color e = Color.fromRGBO(58, 153, 11, 1.0);
    Color b = Color.fromRGBO(255, 255, 132, 0.93);
    return Scaffold(
        backgroundColor: b,
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          title: Text(
            'Entraine-toi !',
            style: TextStyle(fontSize: 35),
          ),
          centerTitle: true,
          backgroundColor: e,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('assets/dragon_basique.png')),
            Flexible(
                child: Row(children: <Widget>[
              Expanded(
                child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed(FifthPage.tag);
                      },
                      color: e,
                      padding:
                          EdgeInsets.symmetric(vertical: 20.0, horizontal: 15),
                      child: AutoSizeText(
                        'Niveau facile',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                ),
              )
            ])),
            Flexible(
                child: Row(children: <Widget>[
              Expanded(
                child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 0),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      onPressed: () {
                        value = 0;
                        totalScore = 0;
                        list=[];
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SeventhPage(
                            value: value,
                            totalScore: totalScore,
                            list: list,
                          ),
                        ));
                      },
                      color: e,
                      padding:
                          EdgeInsets.symmetric(vertical: 20.0, horizontal: 15),
                      child: AutoSizeText(
                        'Niveau moyen',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                ),
              )
            ])),
            Flexible(
                child: Row(children: <Widget>[
              Expanded(
                child: Container(
                  margin: new EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 2),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      onPressed: () {
                        value = 0;
                        totalScore = 0;
                        list=[];
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SixthPage(
                            value: value,
                            totalScore: totalScore,
                            list: list,
                          ),
                        ));
                      },
                      color: e,
                      padding:
                          EdgeInsets.symmetric(vertical: 20.0, horizontal: 15),
                      child: AutoSizeText(
                        'Niveau difficile',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      )),
                ),
              )
            ]))
          ],
        ));
  }
}
