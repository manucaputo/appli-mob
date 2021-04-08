import 'package:flutter/material.dart';
import 'second_page.dart';
import 'third_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.75),
        body: Column(
          children: [
            Text('\n \n'),
            Image(image: AssetImage('assets/maths.jpg')),
            Text('\n \n \n \n \n'),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey.withOpacity(0.9), // background
                  onPrimary: Colors.white.withOpacity(0.8), // foreground
                ),
                child: Text(
                  'Afficher tables',
                  style: TextStyle(fontSize: 40),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(SecondPage.tag);
                }),
            Text('\n'),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey.withOpacity(0.9), // background
                  onPrimary: Colors.white.withOpacity(0.8),
                ),
                child: Text(
                  'Entraîne-toi !',
                  style: TextStyle(fontSize: 40),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(SecondPage.tag);
                }),

            /*Text(
              number.toString(),
              style: TextStyle(fontSize: 40),
            ),*/
          ],
        ),
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text(
            "Easy Maths !",
            style: TextStyle(
              fontSize: 35,
              color: Colors.white.withOpacity(1),
            ),
          ),
          centerTitle: true,
          /* actions: [
            Icon(Icons.access_alarm_outlined),
          ], */
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          currentIndex: index,
          backgroundColor: Colors.blueGrey,
          onTap: (indexpushed) {
            setState(() {
              index = indexpushed;
            });

            index = indexpushed;
          },
          items: [
            BottomNavigationBarItem(
                label: ('account'), icon: Icon(Icons.circle)),
            BottomNavigationBarItem(
                label: ('alert'), icon: Icon(Icons.add_alert)),
          ],
        ));
  }
}
