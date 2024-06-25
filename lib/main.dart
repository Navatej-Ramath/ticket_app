import 'package:flutter/material.dart';
import 'package:sample_project_2/navigation.dart';
import 'package:sample_project_2/res/styles/app_styles.dart';
import 'package:sample_project_2/screens/All_hotels_view.dart';
import 'package:sample_project_2/screens/All_ticket_view.dart';
import 'package:sample_project_2/screens/more_hotel_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(canvasColor: AppColors.canvasColor),
      home: const homeScreen(),
      routes: {
        "all_tickets":(context){
          return const allTickets();
        },
        "all_hotels":(context){
          return  allHotels();
        },
        "more_hotels":(context){
          return mHotel();
        }
      },
    );
  }
}
