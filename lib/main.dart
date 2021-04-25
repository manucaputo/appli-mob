import 'package:flutter/material.dart';
import 'package:flutter_app/fifth_page.dart';
import 'package:flutter_app/fourth_page.dart';

import 'home_page.dart';

import 'second_page.dart';

import 'third_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  int value;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          SecondPage.tag: (context) => SecondPage(),
          ThirdPage.tag: (context) => ThirdPage(value: value),
          FourthPage.tag: (context) => FourthPage(),
          FifthPage.tag: (context) => FifthPage(),
        },
        home: HomePage());
  }
}
