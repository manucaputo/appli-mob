import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  static const tag = "second_page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text(
          "Affichage des tables",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
      ),
    );
  }
}
