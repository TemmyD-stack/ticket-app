import 'package:flutter/material.dart';
import 'package:ticketapp/base/res/styles/app_styles.dart';

class AppTicketsTabs extends StatelessWidget {
  const AppTicketsTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppStyles.ticketTabColor,
      ),
      child: Row(
        children: [
          AppTabs(tabText: 'Airline Tickets'),
          AppTabs(tabBorder: true, tabText: 'Hotels', tabColor: true,)
        ]
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  const AppTabs({super.key, this.tabText = '', this.tabBorder = false, this.tabColor = false});
  final String tabText;
  final bool tabBorder;
  final bool tabColor;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
            width: size.width * 0.44,
            padding: EdgeInsets.symmetric(vertical: 7),
            decoration: BoxDecoration(
              borderRadius: tabBorder == false 
              ? BorderRadius.horizontal(left: Radius.circular(50)) 
              :  BorderRadius.horizontal(right: Radius.circular(50)),
              color: tabColor == false ? Colors.white : Colors.transparent,
            ),
            child: Center(
              child: Text(
               tabText,
              ),
            ),
          );
  }
}
