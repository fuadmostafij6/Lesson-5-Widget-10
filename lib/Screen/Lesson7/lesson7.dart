

import 'package:flutter/material.dart';
import 'package:lesson5/Screen/Lesson7/Screen/Profile.dart';
import 'package:lesson5/Screen/Lesson7/Screen/Search.dart';

import '../HomePage/homepage.dart';

import 'package:hexcolor/hexcolor.dart';

import 'Screen/ListViewScreen.dart';

class BNB extends StatefulWidget {
  const BNB({Key? key}) : super(key: key);

  @override
  State<BNB> createState() => _BNBState();
}



class _BNBState extends State<BNB> {

  int selectedPage = 0;
  final list =[
    Homepage(), //0
    Search(), //1
    ListViewScreen(),
    Profile(), //2

  ];

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: list[selectedPage],
      bottomNavigationBar:

      BottomNavigationBar(
        unselectedItemColor: HexColor("#6BCD46"),
        selectedItemColor: Colors.red,
        backgroundColor: Colors.black,
        currentIndex: selectedPage,
onTap:(index){

          setState(() {
            selectedPage =index;
          });

} ,
        items: const [

          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search,),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.list,),label: "ListView"),
          //BottomNavigationBarItem(icon: Icon(Icons.home_filled)),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),

        ],)
    );
  }
}
