import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticketapp/controller/bottom_nav_controller.dart';
import 'package:ticketapp/screens/home/home_screen.dart';
import 'package:ticketapp/screens/profile/widgets/profile.dart';
import 'package:ticketapp/screens/search/search_screen.dart';
import 'package:ticketapp/screens/tickets/ticket_screen.dart';

class BottomNavBar extends StatelessWidget {
   BottomNavBar({super.key});


  // dependency Injection
  final BottomNavController controller = Get.put(BottomNavController());


  final appScreens = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx((){
      return Scaffold(
      body: appScreens[controller.selectedIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        onTap: controller.onItemTapped,
        currentIndex: controller.selectedIndex.value,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526400),
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: const Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: const Icon(FluentSystemIcons.ic_fluent_search_regular),
            activeIcon: const Icon(FluentSystemIcons.ic_fluent_search_filled),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: const Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            activeIcon: const Icon(FluentSystemIcons.ic_fluent_ticket_filled),
            label: 'Tickets',
          ),
          BottomNavigationBarItem(
            icon: const Icon(FluentSystemIcons.ic_fluent_person_regular),
            activeIcon: const Icon(FluentSystemIcons.ic_fluent_person_filled),
            label: 'Profile',
          ),
        ],
      ),
    );
    });
  }
}
