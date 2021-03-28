import 'package:flutter/material.dart';
import 'second_page.dart';


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

        backgroundColor: Colors.white,
        body: Column(

          children: [
           Image(
             image:AssetImage('assets/maths.jpg')

           ),
           /* IconButton(
                icon: Icon(Icons.add_box),
                onPressed: () {
                  setState(() {
                    number++;
                  });
                }),
                */
           Text('\n \n \n \n \n'),
           ElevatedButton (
                 style: ElevatedButton.styleFrom(
                 primary: Colors.orangeAccent, // background
                 onPrimary: Colors.white, // foreground
               ),
               child: Text('Afficher tables',style: TextStyle(fontSize: 40), ),

                onPressed: () {
                  Navigator.of(context).pushNamed(SecondPage.tag);
                }),
            Text('\n'),
            ElevatedButton (
                style: ElevatedButton.styleFrom(
                  primary: Colors.orangeAccent, // background
                  onPrimary: Colors.white, // foreground
                ),
                child: Text('Entraînes-toi !',style: TextStyle(fontSize: 40), ),

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


  backgroundColor: Colors.orangeAccent,
          title: Text("Calcul easy !",style: TextStyle(fontSize: 40),),
          centerTitle: true,


          actions: [
            Icon(Icons.access_alarm_outlined ),

          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          currentIndex: index,
          backgroundColor: Colors.orangeAccent,
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
