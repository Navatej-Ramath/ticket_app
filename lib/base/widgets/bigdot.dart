import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bigDot extends StatelessWidget {
  const bigDot({super.key,required this.screen});
  final int screen;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(20), // Set border radius
      border: Border.all(
        color: screen==1?Colors.white:Colors.blue.shade300, // Set border color
        width: 2, // Set border width
      ),

    ),
    );
  }
}
