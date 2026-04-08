import 'package:flutter/material.dart';
import 'package:ticketapp/base/res/styles/app_styles.dart';

class TicketPositionedCircle extends StatelessWidget {
  final bool? position;
  const TicketPositionedCircle({super.key, this.position = true});

  @override
  Widget build(BuildContext context) {
    return Positioned(
            left: position == true ? 27 : null,
            right: position == true ? null : 27,
             top: 248,
             child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppStyles.textColor, width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: AppStyles.textColor,
              ),
            )
          );
  }
}