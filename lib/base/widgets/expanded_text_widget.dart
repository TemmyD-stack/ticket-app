import 'package:flutter/material.dart';
import 'package:ticketapp/base/res/styles/app_styles.dart';

class ExpandedTextWidget extends StatefulWidget {
  const ExpandedTextWidget({super.key, required this.text, });
  final String text;

  @override
  State<ExpandedTextWidget> createState() => _ExpandedTextWidgetState();
}

class _ExpandedTextWidgetState extends State<ExpandedTextWidget> {
  bool isExpanded = false;

   void _toggleExpanded() {
       setState(() {
      isExpanded = !isExpanded;
    });}



  @override
  Widget build(BuildContext context) {
  
    var textWidget = Text(
      widget.text,
      maxLines: isExpanded ? null : 9,
      overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textWidget,
        GestureDetector(
          onTap: () => _toggleExpanded(),
           child: Text(
            isExpanded ? 'Less' : 'More',
            style: AppStyles.headLineStyle3.copyWith( color: AppStyles.findTicketsColor),
          ),
        ),
  
      ],
    );
  }
}