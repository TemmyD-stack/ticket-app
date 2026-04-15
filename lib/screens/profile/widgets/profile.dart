import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticketapp/base/res/media.dart';
import 'package:ticketapp/base/res/styles/app_styles.dart';
import 'package:ticketapp/base/widgets/heading_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Padding(padding: EdgeInsets.only(top: 40)),
          Row(
            children: [
              // Here's the logo
              Container(
                width: 86,
                height: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(AppMedia.logo),
                  ),
                ),
              ),
              SizedBox(width: 10),
              // Here's the header text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                HeadingText(text: 'Book Tickets', isColor: false),
                Text('New York', style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500,
                )),
                SizedBox(height: 8,),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: AppStyles.profileLocationColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppStyles.premiumStatusColor,

                        ),
                        child: Icon(
                          FluentSystemIcons.ic_fluent_shield_filled,
                          color: AppStyles.ticketColor,
                          size: 15,
                          ),
                      ),
                      SizedBox(width: 5,),
                      Text("Premium Status", style: TextStyle(color: AppStyles.premiumStatusColor, fontWeight: FontWeight.w500), )
                  ],
                  ),
                )
               ], 
              ),
            ],
          )

        ],
      ),
    );
  }
}