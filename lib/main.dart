import 'package:flutter/material.dart';
import 'package:flutter_app/fifth_page.dart';
import 'package:flutter_app/fourth_page.dart';
import 'package:flutter_app/seventh_page.dart';
import 'package:flutter_app/sixth_page.dart';
import 'Eighth.dart';
import 'Eighthfacile.dart';
import 'Eighthmoyen.dart';
import 'home_page.dart';
import 'second_page.dart';
import 'third_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static const tag = "home_page";
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // définition des variables
  int number = 0;
  int value;
  int totalScore = 0;
  List<String> list=[];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // permet d'utiliser les différentes pages
        debugShowCheckedModeBanner: false,
        routes: {
          SecondPage.tag: (context) => SecondPage(),
          ThirdPage.tag: (context) => ThirdPage(value: value),
          FourthPage.tag: (context) => FourthPage(),
          FifthPage.tag: (context) => FifthPage(),
          SixthPage.tag: (context) =>
              SixthPage(value: value, totalScore: totalScore, list: list),
          SeventhPage.tag: (context) =>
              SeventhPage(value: value, totalScore: totalScore, list:list),
            EighthPage.tag: (context) =>
            EighthPage(list: list, totalScore: totalScore,),
          EighthmoyenPage.tag: (context) =>
              EighthPage(list: list, totalScore: totalScore,),
          EighthfacilePage.tag: (context) =>
              EighthPage(list: list, totalScore: totalScore,),
        },

        // la page de base est la HomePage
        home: HomePage());
  }
}
