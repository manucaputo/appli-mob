import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  static const tag = "second_page";

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Choisis ta table !'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                 margin: new EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 10.0),
                  child: FlatButton(
                      onPressed: () {},
                      color: Colors.amber,
                      padding: EdgeInsets.symmetric(vertical: 40.0,horizontal: 15),
                      child: Text('1',style: TextStyle(fontSize:40),))),
              Container(
                margin: new EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 10.0),
                child: FlatButton(
                    onPressed: () {},
                    color: Colors.amber,
                    padding: EdgeInsets.symmetric(vertical: 40.0,horizontal: 15),
                    child: Text('2', style: TextStyle(fontSize: 40),)),
              ),
              Container(
                  margin: new EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 10.0),
                  child: FlatButton(
                      onPressed: () {},
                      color: Colors.amber,
                      padding: EdgeInsets.symmetric(vertical: 40.0,horizontal: 15),
                      child: Text('3', style: TextStyle(fontSize:40),))),
            ])

        /* body: Row(
            child :  Container(
                              decoration: BoxDecoration(
                              color: Colors.cyan,
                              ),
               child: Align(child: Text("Table de 1"),
                      alignment: Alignment(0.1,0.1),

            )
          ),



           onTap : (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => #refpage..),
              );
           } */

        );
  }
}
