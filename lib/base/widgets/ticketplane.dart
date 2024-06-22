import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bigdot.dart';

class ticketPlane extends StatelessWidget {
  const ticketPlane({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        bigDot(),
        Text(
          '------',
          style: TextStyle(color: Colors.white),
        ),
        Icon(
          FluentSystemIcons.ic_fluent_airplane_filled,
          color: Colors.white,
        ),
        Text('------', style: TextStyle(color: Colors.white)),
        bigDot(),
      ],
    );
  }
}
