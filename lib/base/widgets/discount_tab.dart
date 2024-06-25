import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class discountTab extends StatelessWidget {
  const discountTab({super.key,required this.color,required this.text1,required this.text2});
  final Color color;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:10 ,right:10 ,top:16 ,bottom:10 ),
      child: Column(
        children: [
          Text(text1,style: TextStyle(
            color: Colors.white,
              fontSize: 22, fontWeight: FontWeight.w600)),
          SizedBox(height: 7,),
          Text(text2,style: TextStyle(color: Colors.white,
              fontSize: 17, fontWeight: FontWeight.w600),)
        ],
      ),
      height: 180,
      margin: EdgeInsets.only(left: 20,bottom: 10),
      width:(MediaQuery.of(context).size.width - 60) * 0.5,
      decoration: BoxDecoration(color: color,borderRadius: BorderRadius.all(Radius.circular(15))),
    );
  }
}
