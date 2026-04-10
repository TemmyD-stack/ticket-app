import 'package:flutter/material.dart';
import 'package:ticketapp/base/res/styles/app_styles.dart';
import 'package:ticketapp/base/utils/app_routes.dart';
import 'package:ticketapp/base/widgets/app_double_text.dart';
import 'package:ticketapp/screens/search/widgets/app_text_icon.dart';
import 'package:ticketapp/screens/search/widgets/app_tickets_tabs.dart';
import 'package:ticketapp/screens/search/widgets/find_tickets.dart';
import 'package:ticketapp/screens/search/widgets/ticket_promotion.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(height: 40),
          Text(
            "what are\nyou looking for?",
            style: AppStyles.headLineStyle1.copyWith(
              fontSize: 35,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20),
          AppTicketsTabs(
            firstTab: 'Airline Tickets',
            secondTab: 'Hotels',
          ),
          SizedBox(height: 25),
          AppTextIcon(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          SizedBox(height: 20),
          AppTextIcon(icon: Icons.flight_land_rounded, text: "Arrival"),
          SizedBox(height: 25),
          FindTickets(),
          SizedBox(height: 40),
          AppDoubleText(
            bigText: 'Upcoming Flights',
            smallText: 'View all',
            func: () => Navigator.pushNamed(context, AppRoutes.allTickets),
          ),
          SizedBox(height: 15),
          TicketPromotion(),
        ],
      ),
    );
  }
}
