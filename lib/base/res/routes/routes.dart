import 'package:flutter/material.dart';

import '../../../screens/home/all_tickets.dart';
import '../../../screens/home/home_screen.dart';
import '../../bottom_nav_bar.dart';
import 'routes_name.dart';

class Routes {
  // intital route
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.initial:
        return MaterialPageRoute(builder: (_) => const BottomNavBar());
      case RoutesName.homePage:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case RoutesName.allTickets:
        return MaterialPageRoute(builder: (_) => const AllTickets());
      // case RoutesName.allHotels:
      // return MaterialPageRoute(builder: (_) => const HomeScreen());
      // case RoutesName.allFlights:
      // return MaterialPageRoute(builder: (_) => const HomeScreen());
      // case RoutesName.hotelDetail:
      // return MaterialPageRoute(builder: (_) => const HomeScreen());
      // case RoutesName.ticketScreen:
      // return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
