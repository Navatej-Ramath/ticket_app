import 'package:flutter/material.dart';
import 'package:sample_project_2/res/styles/app_styles.dart';

class DoubleText extends StatelessWidget {
  const DoubleText(
      {super.key, required this.FirstStr, required this.SecondStr, required this.paddingTop, required this.screen,required this.paddingside});
  final String FirstStr;
  final String SecondStr;
  final double paddingTop;
  final String screen;
  final double paddingside;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.only(top: paddingTop, left: paddingside, right: paddingside, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            FirstStr,
            style: const TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
          ),
          InkWell(
            onTap: ()=>
              Navigator.pushNamed(context, screen)
            ,
            child: Text(SecondStr,style: const TextStyle(fontSize: 15,
                color: AppColors.linkColor,
                fontWeight: FontWeight.w600),),
          )
        ],
      ),
    );
  }
}
