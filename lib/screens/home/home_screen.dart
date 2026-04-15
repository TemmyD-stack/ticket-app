import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticketapp/base/res/media.dart';
import 'package:ticketapp/base/res/styles/app_styles.dart';
import 'package:ticketapp/base/utils/app_json.dart';
import 'package:ticketapp/base/utils/app_routes.dart';
import 'package:ticketapp/base/widgets/app_double_text.dart';
import 'package:ticketapp/base/widgets/heading_text.dart';
import 'package:ticketapp/base/widgets/ticket_view.dart';
import 'package:ticketapp/screens/home/hotel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Good Morning', style: AppStyles.headLineStyle3),
                        SizedBox(height: 5),
                        HeadingText(text: 'Book Tickets', isColor: false),
                      ],
                    ),

                    // Logo Image
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        // color: Colors.blue,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AppMedia.logo),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xfFF4F6FD),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xffbfc205),
                      ),
                      Text('Search'),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                AppDoubleText(
                  bigText: 'Upcoming Flights',
                  smallText: 'View all',
                  func: () => Navigator.pushNamed(context, AppRoutes.allTickets),
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ticketList.take(2).map((singleTicket) => GestureDetector(
                      onTap: (){
                        var index = ticketList.indexOf(singleTicket);
                    // print('index: $index');
                    Navigator.pushNamed(context, AppRoutes.ticketScreen, arguments: {"index": index,});
                      },
                      child: TicketView(ticket: singleTicket))).toList(),
                  ),
                ),
                SizedBox(height: 40),
                AppDoubleText(
                  bigText: 'Hotels',
                  smallText: 'View all',
                  func: () => Navigator.pushNamed(context, AppRoutes.allHotels),
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: hotelList.take(2).map((singleHotel) => GestureDetector(
                      onTap: (){
                        var index = hotelList.indexOf(singleHotel);
                         Navigator.pushNamed(context, AppRoutes.hotelDetail, arguments: {"index": index});
                      },
                      child: Hotel(hotel: singleHotel))).toList(),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
