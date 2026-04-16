import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticketapp/base/res/styles/app_styles.dart';
import 'package:ticketapp/controller/text_expansion_controller.dart';

class ExpandedTextWidget extends StatelessWidget {
  ExpandedTextWidget({super.key, required this.text, });
  final String text;


  final TextExpansionController controller = Get.put(TextExpansionController());
  @override
  Widget build(BuildContext context) {
  
    
    return Obx((){
      var textWidget = Text(
      text,
      maxLines: controller.isExpanded.value ? null : 9,
      overflow: controller.isExpanded.value ? TextOverflow.visible : TextOverflow.ellipsis,
    );
      return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textWidget,
        GestureDetector(
          onTap: () => controller.toggleExpanded(),
           child: Text(
            controller.isExpanded.value ? 'Less' : 'More',
            style: AppStyles.headLineStyle3.copyWith( color: AppStyles.findTicketsColor),
          ),
        ),
  
      ],
    );
    });
  }
}