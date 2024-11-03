import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ticket_app/controller/bloc/bottom_nav_bar/bottom_nav_bloc.dart';
import 'package:ticket_app/controller/bloc/bottom_nav_bar/bottom_nav_events.dart';
import 'package:ticket_app/screens/home/home_screen.dart';
import 'package:ticket_app/screens/ticket/ticket_screen.dart';

import '../controller/bloc/bottom_nav_bar/bottom_nav_states.dart';
import '../screens/profile/profile.dart';
import '../screens/search/search_screen.dart';
import 'res/Theme/colors.dart';
import 'utils/constants/icons.dart';

class BottomNavBar extends StatelessWidget {
  final appScreens = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];

  BottomNavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBloc, BottomNavState>(
      builder: (context, state) {
        if (state is BottomNavSelected) {
          return Scaffold(
            body: Center(
              child: appScreens[state.selectedIndex],
            ),
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Colors.blueGrey,
              unselectedItemColor: HColors.selectedIconColor,
              showSelectedLabels: false,
              onTap: (int index) {
                context.read<BottomNavBloc>().add(OnItemTapped(index));
              },
              currentIndex: state.selectedIndex,
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
        } else {
          return Container();
        }
      },
    );
  }
}
