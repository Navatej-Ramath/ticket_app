import 'package:flutter/cupertino.dart';

import '../../res/styles/app_styles.dart';

class selectionTab extends StatelessWidget {
  const selectionTab({super.key,required this.name,required this.flag,required this.color});
  final String name;
  final int flag;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: color,
            borderRadius: flag==1?BorderRadius.horizontal(left:Radius.circular(30)):BorderRadius.horizontal(right:Radius.circular(30))
        ),
        height: 40,
        width: (MediaQuery.of(context).size.width-40)*0.5,
        child: Text(
          name,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        ));
  }
}
