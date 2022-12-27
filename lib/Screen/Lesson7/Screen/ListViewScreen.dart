

import 'dart:ui';

import 'package:flutter/material.dart';

import 'LayoutScreen.dart';
import 'Orientation.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:OrientationPage(),
    );
  }
}



class secondPage extends StatefulWidget {
  const secondPage({Key? key}) : super(key: key);

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {

  List user =[
    "Aziz",

    "Shown",

    "Pia",

    "Jamal",
  ];

 List <Map<String, dynamic>> user1 =[
  {
  "name": "Aziz",
  "massage":"Hi",
    "seen": true
},

   {
     "name": "Shown",
     "massage":"hlw",
     "seen": false
   },

   {
     "name": "Pia",
     "massage":"Hi",
     "seen": false
   },

   {
     "name": "Jamal",
     "massage":"Hi",
     "seen": false
   },
 ];




  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
     
     
      // ListView.builder(
      //   primary: false,
      // shrinkWrap: true,
      //
      // itemCount: user1.length,
      //
      //   itemBuilder: (BuildContext context, int index) {
      //
      //     return  ListTile(
      //       title: Text(user1[index]["name"]),
      //       subtitle: Text(user1[index]["massage"]),
      //       trailing:user1[index]["seen"]==true?
      //       Icon(Icons.check_circle):
      //       Icon(Icons.check_circle_outline),
      //     );
      //   },
      //
      // ),
          Stack(
           // fit: StackFit.expand,
            children: [

              Image.asset("assets/512x512.png"),
              Positioned(
                right: 0,
                bottom: 0,

                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle
                  ),
                ),
              )


            ],
          )
        ],
      );

  }
}
