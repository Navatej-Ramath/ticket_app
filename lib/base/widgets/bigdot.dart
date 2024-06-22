import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bigDot extends StatelessWidget {
  const bigDot({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(20), // Set border radius
      border: Border.all(
        color: Colors.white, // Set border color
        width: 2, // Set border width
      ),

    ),
    );
  }
}
