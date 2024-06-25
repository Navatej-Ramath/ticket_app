import 'package:flutter/material.dart';
import 'package:sample_project_2/screens/more_hotel_info.dart';
import '../main.dart';
import '../res/styles/app_styles.dart';

class allHotels extends StatelessWidget {
  allHotels({super.key});
  final List name1 = ['Open Space', 'Cozy Corner', 'Luxury suite'];
  final List name2 = ['London','Paris','New York'];
  final List cost = ['\$25/night','\$30/night','\$200/night'];
  final List path = ['hotel1.jpeg','hotel2.jpg','hotel3.jpg'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('All Hotels'),
        ),
        body: GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, "more_hotels");
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.54),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return hotelGridview(
                    info: name1[index],
                    location: name2[index],
                    cost: cost[index],
                    imagelocation: 'assets/images/${path[index]}',
                  );
                }),
          ),
        ));
  }
}

class hotelGridview extends StatelessWidget {
  const hotelGridview(
      {super.key,
      required this.info,
      required this.location,
      required this.cost,
      required this.imagelocation});
  final String info;
  final String cost;
  final String location;
  final String imagelocation;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.ticketTop,
            borderRadius: BorderRadius.circular(10)),
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
                    image: DecorationImage(
                        image: AssetImage(imagelocation), fit: BoxFit.fill)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    info,
                    style: const TextStyle(
                        fontSize: 28,
                        color: AppColors.hotelInfo,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    location,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    cost,
                    style: const TextStyle(
                        fontSize: 28,
                        color: AppColors.hotelInfo,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
