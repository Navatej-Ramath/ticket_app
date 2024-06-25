import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class positionedDot extends StatelessWidget {
  const positionedDot({super.key,required this.left,required this.top});
  final double left;
  final double top;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: left,
        top:top,
        child: Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: Colors.black)),
          child: CircleAvatar(
            maxRadius: 4,
            backgroundColor: Colors.black,
          ),
        ));
  }
}
