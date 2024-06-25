import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_project_2/res/styles/app_styles.dart';

class tickets_ext extends StatelessWidget {
  const tickets_ext(
      {super.key,
      required this.topleftName,
      required this.bottomleftName,
      required this.bottomrightName,
      required this.toprightName});
  final String topleftName;
  final String bottomleftName;
  final String toprightName;
  final String bottomrightName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 27),
      height: 80,
      width: 320,
      decoration: BoxDecoration(
        color: AppColors.canvasColor,
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                topleftName,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              Text(
                bottomleftName,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade500),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                toprightName,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              Text(
                bottomrightName,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade500),
              )
            ],
          ),
        ],
      ),
    );
    ;
  }
}
