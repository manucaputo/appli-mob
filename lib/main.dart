import 'package:flutter/material.dart';

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
  String value;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          SecondPage.tag: (context) => SecondPage(),
          ThirdPage.tag: (context) => ThirdPage(value: value)
        },
        home: HomePage());
  }
}
