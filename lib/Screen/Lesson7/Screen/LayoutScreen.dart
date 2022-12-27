

import 'package:flutter/material.dart';
class LayoutDesign extends StatefulWidget {
  const LayoutDesign({Key? key}) : super(key: key);

  @override
  State<LayoutDesign> createState() => _LayoutDesignState();
}

class _LayoutDesignState extends State<LayoutDesign> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(

        builder: (context, constrains){

       if(constrains.maxWidth>= 800){

         return Container(
           height: 100,
           width: 300,
           color: Colors.red,
         );

       }
       else{
         return Container(
           height: 100,
           width: 300,
           color: Colors.green,
         );
       }
    });
  }
}
