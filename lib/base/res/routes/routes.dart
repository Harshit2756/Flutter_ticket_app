import 'package:flutter/material.dart';
import 'package:ticket_app/base/data/models/hotel_model.dart';
import 'package:ticket_app/base/data/models/ticket_model.dart';
import 'package:ticket_app/screens/hotel/all_hotels.dart';
import 'package:ticket_app/screens/hotel/hotel_detail.dart';
import 'package:ticket_app/screens/profile/profile.dart';
import 'package:ticket_app/screens/ticket/ticket_screen.dart';

import '../../../screens/home/home_screen.dart';
import '../../../screens/ticket/all_tickets.dart';
import '../../bottom_nav_bar.dart';
import 'routes_name.dart';

class Routes {
  // intital route
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.initial:
        return MaterialPageRoute(builder: (_) => BottomNavBar());
      case RoutesName.homePage:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case RoutesName.allTickets:
        return MaterialPageRoute(builder: (_) => const AllTickets());
      case RoutesName.allHotels:
        return MaterialPageRoute(builder: (_) => const AllHotels());
      case RoutesName.profile:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case RoutesName.hotelDetail:
        return MaterialPageRoute(builder: (_) {
          var args = settings.arguments as Map<String, dynamic>;
          return Hoteldetail(hotel: HotelModel.fromJson(args['hotel']));
        });
      case RoutesName.ticketScreen:
        return MaterialPageRoute(builder: (_) {
          var args = settings.arguments as Map<String, dynamic>;
          return TicketScreen(ticket: TicketModel.fromJson(args['ticket']));
        });
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
