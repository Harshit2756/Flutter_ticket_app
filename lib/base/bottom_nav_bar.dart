import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/Theme/colors.dart';
import 'package:ticket_app/base/utils/Constants/icons.dart';
import 'package:ticket_app/screens/home/home_screen.dart';

import '../screens/search/search_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  BottomNavBarState createState() => BottomNavBarState();
}

class BottomNavBarState extends State<BottomNavBar> {
  final appScreens = [
    const HomeScreen(),
    const SearchScreen(),
    const Text('Ticket'),
    const Text('Profile'),
  ];
  int _currentIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: appScreens[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: HColors.selectedIconColor,
        showSelectedLabels: false,
        onTap: _onItemTapped,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(HIcons.homeIconRegular),
            activeIcon: Icon(HIcons.homeIconFilled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(HIcons.searchIconRegular),
            activeIcon: Icon(HIcons.searchIconFilled),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(HIcons.ticketIconRegular),
            activeIcon: Icon(HIcons.ticketIconFilled),
            label: 'Ticket',
          ),
          BottomNavigationBarItem(
            icon: Icon(HIcons.personIconRegular),
            activeIcon: Icon(HIcons.personIconFilled),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
