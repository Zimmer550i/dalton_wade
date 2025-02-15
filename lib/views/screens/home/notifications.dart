import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/app_icons.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/custom_app_bar.dart';
import 'package:dalton_wade/views/base/svg.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    var data = [
      "Your application has been submitted successfully!",
      "You have a new message from the Dalton Wade team.",
      "Your profile update has been saved.",
      "Congratulations! Your agent application has been approved.",
      "Your application is under review. We’ll get back to you soon.",
      "Your application was not approved. Contact support for details.",
    ];
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 14,
                bottom: 10,
              ),
              child: Text(
                "Notifications",
                style: AppStyles.h07.copyWith(
                  color: AppColors.primary,
                ),
              ),
            ),
            for (var i in data) _notification(i, "8:30 PM")
          ],
        ),
      ),
    );
  }

  Widget _notification(String text, String time) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.lightGrey,
          )
        )
      ),
      child: Row(
        spacing: 12,
        children: [
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffF4F4F4),
            ),
            child: Svg(
              asset: AppIcons.notification,
              color: AppColors.grey,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: AppStyles.small.copyWith(
                color: AppColors.dark,
              ),
            ),
          ),
          Text(
            time,
            style: AppStyles.smallBold.copyWith(
              color: AppColors.dark,
            ),
          ),
        ],
      ),
    );
  }
}
