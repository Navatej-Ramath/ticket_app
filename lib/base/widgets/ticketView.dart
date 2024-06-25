import 'dart:ffi';

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_project_2/base/widgets/topticket.dart';
import 'package:sample_project_2/res/styles/app_styles.dart';

import 'bigdot.dart';

class ticketView extends StatelessWidget {
  const ticketView(
      {super.key,
      required this.fromCode,
      required this.from,
      required this.toCode,
      required this.to,
      required this.time,
      required this.date,
      required this.departureTime,
      required this.number,
      required this.flag,
      required this.screen,
      required this.rad});
  final String fromCode;
  final String from;
  final String toCode;
  final String to;
  final String date;
  final String number;
  final String departureTime;
  final String time;
  final int flag;
  final int screen;
  final double rad;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
           ticketPart(
              ticketcolor: flag==1?Color(0xFF5C6BC0):Colors.white,
              flag: 1,
              toprightName: toCode,
              toplefttName: fromCode,
              bottomrightName: to,
              bottomleftName: from,
              bottomcentreName: time
           ,screen: screen,
           rad: rad,),
          Container(
            height: 25,
            width: 320,
            color: flag==1?Color(0xFFFF8A65):Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 12,
                  decoration: const BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        topRight: Radius.circular(10)),
                  ),
                ),
                 Text(
                  '-  -  -  -  -  -  -  -  -   -  -   -  - -  -  -  -  -  -  -  -  -  -  -  -',
                  style: TextStyle(color: flag==1?Colors.white:Colors.grey.shade500),
                ),
                Container(
                    width: 12,
                    decoration: const BoxDecoration(
                      color:AppColors.backgroundColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10)),
                    ))
              ],
            ),
          ),
          ticketPart(
              ticketcolor: flag==1?Color(0xFFFF8A65):Colors.white,
              flag: 0,
              toprightName: number,
              toplefttName: date,
              bottomrightName: 'Number',
              bottomleftName: 'Date',
              bottomcentreName: 'Departure Time',
          screen: screen,
          rad: rad,)
        ],

    );
  }
}
