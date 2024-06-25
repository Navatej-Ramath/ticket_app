import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bigdot.dart';

class ticketPlane extends StatelessWidget {
  const ticketPlane({super.key,required this.screen});
  final int screen;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        bigDot(screen: screen,),
        Text(
          '------',
          style: TextStyle(color: screen==1?Colors.white:Colors.grey.shade500),
        ),
        Icon(
          FluentSystemIcons.ic_fluent_airplane_filled,
          color: screen==1?Colors.white:Colors.grey.shade500,
        ),
        Text('------', style: TextStyle(color: screen==1?Colors.white:Colors.grey.shade500)),
        bigDot(screen: screen,),
      ],
    );
  }
}
