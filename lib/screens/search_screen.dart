import 'package:flutter/material.dart';
import 'package:sample_project_2/base/widgets/depart&arrival.dart';
import 'package:sample_project_2/base/widgets/discount_tab.dart';
import 'package:sample_project_2/base/widgets/selection_option.dart';
import 'package:sample_project_2/res/styles/app_styles.dart';

import '../base/widgets/doubleText.dart';

class searchTab extends StatelessWidget {
  const searchTab({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            'What are',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 33),
          ),
          const Text(
            'you looking for?',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 33),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              const selectionTab(
                  name: 'All tickets', flag: 1, color: AppColors.canvasColor),
              selectionTab(
                  name: 'Hotels', flag: 0, color: Colors.grey.shade300),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          const d_and_a(
            icon: Icons.flight_takeoff_rounded,
            name: 'Departure',
          ),
          const SizedBox(
            height: 25,
          ),
          const d_and_a(
            icon: Icons.flight_land_rounded,
            name: 'Arrival',
          ),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 50,
            child: TextButton(
                onPressed: () {},
                child: const Text('Find tickets'),
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(
                      AppColors.ticketTop), // Correct way to set color
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                )),
          ),
          const SizedBox(
            height: 25,
          ),
          const DoubleText(
            FirstStr: 'Upcomming Flights',
            SecondStr: 'view all',
            paddingTop: 10,
            screen: 'all_tickets',
            paddingside: 0,
          ),
          Row(
            children: [
              Container(
                height: 380,
                width: (size.width - 60) * 0.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 180,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/hotel1.jpeg'),
                              fit: BoxFit.fill)),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        '20%discount on the early booking of this flight.Don\'t miss',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              )
            ,Column(
                children: [
                  discountTab(text1: 'Discount for Survey',text2:'Take the survey about our services and get discount',color: Colors.teal.shade400,),
                  const discountTab(text1: 'Special Offer for Feedback',
                    text2: 'Give a feedback and enjoy a discount!', color: AppColors.ticketBottom,)
                ],
              )],
          )
        ],
      ),
    );
  }
}
