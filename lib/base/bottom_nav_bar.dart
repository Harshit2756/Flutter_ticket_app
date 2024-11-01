import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticket_app/screens/home/home_screen.dart';
import 'package:ticket_app/screens/ticket/ticket_screen.dart';

import '../controller/riverpod/bottom_nav_provider.dart';
import '../screens/profile/profile.dart';
import '../screens/search/search_screen.dart';
import 'res/Theme/colors.dart';
import 'utils/constants/icons.dart';

class BottomNavBar extends ConsumerWidget {
  final appScreens = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];

  BottomNavBar({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var currentIndex = ref.watch(bottomNavNotifierProvider);
    return Scaffold(
      body: Center(
        child: appScreens[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: HColors.selectedIconColor,
        showSelectedLabels: false,
        onTap: (ref.read(bottomNavNotifierProvider.notifier)).onItemTapped,
        currentIndex: currentIndex,
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
