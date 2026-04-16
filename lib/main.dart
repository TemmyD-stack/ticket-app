import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticketapp/base/bottom_nav_bar.dart';
import 'package:ticketapp/base/utils/app_routes.dart';
import 'package:ticketapp/screens/home/widgets/all_hotels.dart';
import 'package:ticketapp/screens/home/widgets/all_tickets.dart';
import 'package:ticketapp/screens/hotel_detail.dart';
import 'package:ticketapp/screens/tickets/ticket_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.homeRoute: (context) => BottomNavBar(),
        AppRoutes.allTickets: (context) => const AllTickets(),
        AppRoutes.ticketScreen: (context) => const TicketScreen(),
        AppRoutes.allHotels: (context) => const AllHotels(),
        AppRoutes.hotelDetail: (context) => const HotelDetail(),

      },
    );
  }
}
