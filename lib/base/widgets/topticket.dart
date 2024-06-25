import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_project_2/base/widgets/ticketplane.dart';

import 'bigdot.dart';

class ticketPart extends StatelessWidget {
  const ticketPart(
      {super.key,
      required this.ticketcolor,
      required this.toprightName,
      required this.toplefttName,
      required this.bottomrightName,
      required this.bottomleftName,
      required this.flag,
      required this.bottomcentreName,
      required this.screen,
      required this.rad});
  final Color ticketcolor;
  final String toprightName;
  final String toplefttName;
  final String bottomrightName;
  final String bottomleftName;
  final String bottomcentreName;
  final int flag;
  final int screen;
  final double rad;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      width: 320,
      decoration: BoxDecoration(
        color: ticketcolor,
        borderRadius: flag == 1
            ? const BorderRadius.only(
                topLeft: Radius.circular(20), // Set top left radius
                topRight: Radius.circular(20), // Set top right radius
              )
            :  BorderRadius.only(
                bottomLeft: Radius.circular(rad), // Set top left radius
                bottomRight: Radius.circular(rad), // Set top right radius
              ),
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                toplefttName,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: screen==1?Colors.white:Colors.black),
              ),
              Text(
                bottomleftName,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: screen==1?Colors.white:Colors.grey.shade500),
              )
            ],
          ),
          Column(
            children: [
              flag == 1
                  ?  ticketPlane(screen: screen,)
                  :  Text('08:00AM',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: screen==1?Colors.white:Colors.black)),
               Text(
                bottomcentreName,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: screen==1?Colors.white:Colors.grey.shade500),
              )
            ],
          ),
          Column(
            children: [
              Text(
                toprightName,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: screen==1?Colors.white:Colors.black),
              ),
              Text(
                bottomrightName,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: screen==1?Colors.white:Colors.grey.shade500),
              )
            ],
          ),
        ],
      ),
    );
  }
}
