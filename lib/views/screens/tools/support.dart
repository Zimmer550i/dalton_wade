import 'package:dalton_wade/models/box_icon_data.dart';
import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/app_icons.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/custom_app_bar.dart';
import 'package:dalton_wade/views/base/grid_box.dart';
import 'package:flutter/material.dart';

class Support extends StatelessWidget {
  const Support({super.key});

  @override
  Widget build(BuildContext context) {
    var data = [
      BoxIconData(
        assetPath: AppIcons.ticket,
        label: "Submit a Ticket",
      ),
      BoxIconData(
        assetPath: AppIcons.idea,
        label: "Visit Knowledge Guide",
        // link: AppRoutes.knowledgeGuide,
        link: "https://daltonwade.zohodesk.com/portal/en/kb"
      ),
      BoxIconData(
        assetPath: AppIcons.call,
        label: "Call Support",
      ),
      BoxIconData(
        assetPath: AppIcons.email,
        label: "Email Support",
      ),
    ];
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Text(
                "Support",
                style: AppStyles.h07.copyWith(
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "You can access committed support every day of the week, regardless of the commission plan you’re enrolled in, \n\nUpdate times for support:\nMonday-Friday: 9:00 a.m. to 7:00 p.m. ET\nSaturday: 12:00 p.m. to 5:00 p.m. ET\nSunday: Closed",
                style: AppStyles.body2.copyWith(
                  color: AppColors.third,
                ),
              ),
              const SizedBox(height: 16),
              GridBox(data: data),
            ],
          ),
        ),
      ),
    );
  }
}
