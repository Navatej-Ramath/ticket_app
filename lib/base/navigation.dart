import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:sample_project_2/base/widgets/doubleText.dart';
import 'package:sample_project_2/base/widgets/hotelinfo.dart';
import 'package:sample_project_2/base/widgets/ticketView.dart';
import 'package:sample_project_2/res/styles/app_styles.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _NavBarState();
}

class _NavBarState extends State<homeScreen> {
  int screenIndex = 0;
  void _changeScreen(index) {
    setState(() {
      screenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
          child: ListView(
        children: [
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            child: Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good morning',
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Book Tickets',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      Container(
                        width: 70,
                        height: 70,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/logo2.png"))),
                      )
                    ],
                  ),
                ),
                Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    height: 45,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Row(
                      children: [
                        Icon(
                          FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFFBFC205),
                        ),
                        Text(
                          '   search',
                          style: TextStyle(color: AppColors.TextlabelColor),
                        )
                      ],
                    )),
                const DoubleText(
                  FirstStr: 'Upcoming Flights',
                  SecondStr: 'View all',
                  paddingTop: 35,
                  screen: 'all_tickets',
                ),
              ],
            ),
          ),
          const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ticketView(
                      fromCode: 'NYC',
                      from: 'New-York',
                      toCode: 'LDN',
                      to: 'London',
                      time: '8H 30M',
                      date: '1 May',
                      departureTime: '8:00AM',
                      number: '23'),
                  ticketView(
                    fromCode: 'IND',
                    from: 'India',
                    toCode: 'LAX',
                    to: 'Los Angeles',
                    time: '1H 30M',
                    date: '2 May',
                    departureTime: '10:00AM',
                    number: '45',
                  ),
                  ticketView(
                    fromCode: 'PAR',
                    from: 'Paris',
                    toCode: 'BER',
                    to: 'Berlin',
                    time: '2H 15M',
                    date: '3 May',
                    departureTime: '12:00PM',
                    number: '78',
                  ),
                  ticketView(
                    fromCode: 'NYC',
                    from: 'New York',
                    toCode: 'TOK',
                    to: 'Tokyo',
                    time: '14H 30M',
                    date: '4 May',
                    departureTime: '3:00PM',
                    number: '90',
                  )
                ],
              )),
          SizedBox(height: 10,),
          const DoubleText(
            FirstStr: 'Hotels',
            SecondStr: 'View all',
            paddingTop: 0,
            screen: 'all_hotels',
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                hotelTab(
                  info: 'Open space',
                  location: 'London',
                  cost: '\$25/night',
                  imagelocation: 'assets/images/hotel1.jpeg',
                ),
                hotelTab(
                  info: 'Cozy corner',
                  location: 'Paris',
                  cost: '\$30/night',
                  imagelocation: 'assets/images/hotel2.jpg',
                ),
                hotelTab(
                  info: 'Luxury suite',
                  location: 'New York',
                  cost: '\$200/night',
                  imagelocation: 'assets/images/hotel3.jpg',
                ),
              ],
            ),
          ),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526400),
        onTap: _changeScreen,
        showSelectedLabels: false,
        currentIndex: screenIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              label: 'home',
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled)),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              label: 'search',
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled)),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              label: 'ticket',
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled)),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              label: 'profile',
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled)),
        ],
      ),
    );
  }
}
