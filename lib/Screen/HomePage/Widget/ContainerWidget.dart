
import 'package:flutter/material.dart';
class TextWidget extends StatelessWidget {
  const TextWidget({Key? key, required this.name, this.title}) : super(key: key);

  final String name;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      color: Colors.deepOrange,
      child:
      Center(child: Text(name)),
    );
  }
}
