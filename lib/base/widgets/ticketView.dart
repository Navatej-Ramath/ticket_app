import 'dart:ffi';

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_project_2/base/widgets/topticket.dart';

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
      required this.number});
  final String fromCode;
  final String from;
  final String toCode;
  final String to;
  final String date;
  final String number;
  final String departureTime;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
          children: [
             ticketPart(
                ticketcolor: Color(0xFF5C6BC0),
                flag: 1,
                toprightName: toCode,
                toplefttName: fromCode,
                bottomrightName: to,
                bottomleftName: from,
                bottomcentreName: time),
            Container(
              height: 25,
              width: 320,
              color: const Color(0xFFFF8A65),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 12,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10)),
                    ),
                  ),
                  const Text(
                    '-  -  -  -  -  -  -  -  -   -  -   -  - -  -  -  -  -  -  -  -  -  -  -  -',
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                      width: 12,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10)),
                      ))
                ],
              ),
            ),
            ticketPart(
                ticketcolor: Color(0xFFFF8A65),
                flag: 0,
                toprightName: number,
                toplefttName: date,
                bottomrightName: 'Number',
                bottomleftName: 'Date',
                bottomcentreName: 'Departure Time')
          ],

      ),
    );
  }
}
