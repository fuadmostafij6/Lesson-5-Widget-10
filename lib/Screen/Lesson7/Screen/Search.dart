
import 'package:flutter/material.dart';
class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  final items =[
    "item 1",
    "item 2",
    "item 3",
  ];

  String selectedValue ="item 1";


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
    //  backgroundColor: Colors.black,
      body:
SingleChildScrollView(
  child:   Column(
  mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
  
  
  

      
      RotatedBox(quarterTurns: 1, child: Text("ROtate".toUpperCase()),),

      Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.deepOrange,
            border: Border.all(
              color: Colors.black,
              width: 5,
              style: BorderStyle.solid
            ),
            borderRadius: BorderRadius.only(

              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            )
          ),
          child:
          Center(child: Text("Card")),

      )



  
    ],
  
  ),
)

    );
  }
}

class MyClip  extends CustomClipper<Rect>{
  @override
  Rect getClip(Size size) {

    return Rect.fromLTRB(0, 0, 100, 100);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
