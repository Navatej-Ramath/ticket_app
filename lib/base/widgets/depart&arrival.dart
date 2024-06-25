import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../res/styles/app_styles.dart';

class d_and_a extends StatelessWidget {
  const d_and_a({super.key,required this.name,required this.icon});
  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width-40,
      height: 50,
      decoration: BoxDecoration(
          color: AppColors.canvasColor,
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child:  Row(
        children: [
          SizedBox(width: 15,),
          Icon(icon,color: Colors.grey,),
          SizedBox(width: 15,),
          Text(name,style: TextStyle(fontSize: 18),),
        ],
      ),
    );
  }
}
