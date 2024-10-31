import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_app/base/res/Theme/colors.dart';
import 'package:ticket_app/base/utils/Constants/icons.dart';
import 'package:ticket_app/screens/home/home_screen.dart';
import 'package:ticket_app/screens/ticket/ticket_screen.dart';

import '../controller/bottom_nav_controller.dart';
import '../screens/profile/profile.dart';
import '../screens/search/search_screen.dart';

class BottomNavBar extends StatelessWidget {
  final appScreens = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];

  final BottomNavigationController controller =
      Get.put(BottomNavigationController());

  BottomNavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: Center(
          child: appScreens[controller.currentIndex.value],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: HColors.selectedIconColor,
          showSelectedLabels: false,
          onTap: controller.onItemTapped,
          currentIndex: controller.currentIndex.value,
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
      ),
    );
  }
}


