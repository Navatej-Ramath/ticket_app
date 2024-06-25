import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:sample_project_2/res/styles/app_styles.dart';
import 'package:sample_project_2/screens/home_screen.dart';
import 'package:sample_project_2/screens/profile_screen.dart';
import 'package:sample_project_2/screens/tickets_screen.dart';

import 'screens/search_screen.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _NavBarState();
}

class _NavBarState extends State<homeScreen> {
  int screenIndex = 0;
  final List appScreens = [
    const homeTab(),
    const searchTab(),
    const ticketsTab(),
    const profileTab()
  ];
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
          child: appScreens[screenIndex]),
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
