import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticketapp/base/res/media.dart';
import 'package:ticketapp/base/res/styles/app_styles.dart';
import 'package:ticketapp/base/widgets/app_column_text_layout.dart';
import 'package:ticketapp/base/widgets/heading_text.dart';
import 'package:ticketapp/base/widgets/text_style_third.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Here's the logo
              Container(
                width: 86,
                height: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: AssetImage(AppMedia.logo)),
                ),
              ),
              SizedBox(width: 10),
              // Here's the header text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeadingText(text: 'Book Tickets', isColor: false),
                  Text(
                    'New York',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  SizedBox(height: 8),
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
                        SizedBox(width: 5),
                        Text(
                          "Premium Status",
                          style: TextStyle(
                            color: AppStyles.premiumStatusColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(child: Container()),
              Text(
                'Edit',
                style: TextStyle(
                  color: AppStyles.primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Divider(color: Colors.grey.shade300),
          Stack(
            children: [
              Container(
                height: 98,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppStyles.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: AppStyles.primaryColor,
                        size: 27,
                      ),
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextStyleThird(
                          text: "You've got a new award",
                          isColor: null,
                        ),
                        Text(
                          "You have 95 flights in a year",
                          style: TextStyle(
                            // ignore: deprecated_member_use
                            color: Colors.white.withOpacity(0.5),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xff264cd2), width: 18),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 25),
          Text('Accumulated Miles', style: AppStyles.headLineStyle2),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppStyles.bgColor,
            ),
            child: Column(
              children: [
                Text(
                  '192802',
                  style: AppStyles.headLineStyle1.copyWith(
                    fontSize: 45,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Miles accumulated',
                      style: AppStyles.headLineStyle4.copyWith(fontSize: 16),
                    ),

                    Text(
                      '4th July',
                      style: AppStyles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Divider(color: Colors.grey.shade300),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      topText: '23 042',
                      bottomText: 'Miles',
                      isColor: false,
                      alignment: CrossAxisAlignment.start,
                    ),
                    AppColumnTextLayout(
                      topText: 'Airline CO',
                      bottomText: 'Received from',
                      isColor: false,
                      alignment: CrossAxisAlignment.end,
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Divider(color: Colors.grey.shade300),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      topText: '24',
                      bottomText: 'Miles',
                      isColor: false,
                      alignment: CrossAxisAlignment.start,
                    ),
                    AppColumnTextLayout(
                      topText: 'MacDonald\'s',
                      bottomText: 'Received from',
                      isColor: false,
                      alignment: CrossAxisAlignment.end,
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Divider(color: Colors.grey.shade300),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      topText: '32 638',
                      bottomText: 'Miles',
                      isColor: false,
                      alignment: CrossAxisAlignment.start,
                    ),
                    AppColumnTextLayout(
                      topText: 'Obestech',
                      bottomText: 'Received from',
                      isColor: false,
                      alignment: CrossAxisAlignment.end,
                    ),
                  ],
                ),
                SizedBox(height: 25),
                InkWell(
                  onTap: () {
                    print('How to get more miles');
                  },
                  child: Text(
                    'How to get more miles',
                    style: AppStyles.textStyle.copyWith(
                      color: AppStyles.primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
