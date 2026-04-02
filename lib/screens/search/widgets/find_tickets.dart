import 'package:flutter/material.dart';
import 'package:ticketapp/base/res/styles/app_styles.dart';

class FindTickets extends StatelessWidget {
  const FindTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(vertical: 18, horizontal: 18),
      decoration: BoxDecoration(
        color: AppStyles.findTicketsColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(child: Text("Find Tickets", style: AppStyles.textStyle.copyWith(color: Colors.white),)),
    );
  }
}