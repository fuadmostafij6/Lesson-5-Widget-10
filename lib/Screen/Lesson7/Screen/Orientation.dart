

import 'package:flutter/material.dart';
class OrientationPage extends StatefulWidget {
  const OrientationPage({Key? key}) : super(key: key);

  @override
  State<OrientationPage> createState() => _OrientationPageState();
}

class _OrientationPageState extends State<OrientationPage> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation){

      if(orientation == Orientation.portrait){
        return Center(
          child: Container(
            height: 100,
            width: 300,
            color: Colors.red,
          ),
        );

      }
      else{
        return

          Center(
            child: Container(
            height: 100,
            width: 300,
            color: Colors.black,
        ),
          );
      }

    });
  }
}
