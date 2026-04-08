
import 'package:flutter/material.dart';
import 'package:ticketapp/base/bottom_nav_bar.dart';
import 'package:ticketapp/screens/home/widgets/all_hotels.dart';
import 'package:ticketapp/screens/home/widgets/all_tickets.dart';
import 'package:ticketapp/screens/tickets/ticket_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const BottomNavBar());
      case '/all_tickets':
        return MaterialPageRoute(builder: (_) => const AllTickets());
      case '/ticket_screen':
        return MaterialPageRoute(builder: (_) => const TicketScreen(), settings: settings,);
     case '/all_hotels':
        return MaterialPageRoute(builder: (_) => const AllHotels());
      // Add other routes here

      
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}