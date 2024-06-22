import 'package:flutter/material.dart';
import 'package:sample_project_2/res/styles/app_styles.dart';

class hotelTab extends StatelessWidget {
  const hotelTab({super.key, required this.info, required this.location, required this.cost,required this.imagelocation});
  final String info;
  final String cost;
  final String location;
  final String imagelocation;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      child: Align(
        child: Container(
          margin: EdgeInsets.only(left: 20),
          height: 330,
          width: size.width*0.60,
          decoration: BoxDecoration(color: AppColors.ticketTop,borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 170,
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage(imagelocation),fit: BoxFit.fill)
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      info,
                      style: const TextStyle(fontSize: 28,color: AppColors.hotelInfo,fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 5),
                    Text(location,style: const TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w500),),
                    const SizedBox(height: 5),
                    Text(
                      cost,
                      style: const TextStyle(fontSize: 28,color: AppColors.hotelInfo,fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}