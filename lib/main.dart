import 'package:flutter/material.dart';

import 'home_page.dart';

import 'second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    int index = 0;

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes : {SecondPage.tag :  (context) => SecondPage() },
        home: HomePage());
  }
}

