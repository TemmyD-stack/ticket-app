import 'package:flutter/material.dart';
import 'package:ticketapp/base/res/styles/app_styles.dart';

class AppTextIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  const AppTextIcon({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all( 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(children: [
        Icon(icon, color: AppStyles.planeColor,),
        SizedBox(width: 10,),
        Text(text, style: AppStyles.textStyle,)
      ],),
    );
  }
}