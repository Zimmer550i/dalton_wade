import 'package:dalton_wade/helpers/route.dart';
import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/custom_app_bar.dart';
import 'package:dalton_wade/views/base/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyPlan extends StatelessWidget {
  const MyPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Text(
              "My Plan at Dalton Wade",
              style: AppStyles.h07.copyWith(
                color: AppColors.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Discover yhour current plan tier and what’s included with it below. Feel free to upqrabe at any time!",
              style: AppStyles.body2.copyWith(
                color: AppColors.third,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "Olivia Wilson’s Plan:",
              style: TextStyle(
                fontFamily: "OpenSans",
                fontSize: 18,
                color: AppColors.dark,
                height: 1,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              "BUSINESS BUILDER",
              style: TextStyle(
                fontFamily: "OpenSans",
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: AppColors.dark,
                height: 1,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "\$129/mo + \$79 per transaction",
              style: AppStyles.body1.copyWith(
                color: AppColors.third,
              ),
            ),
            const SizedBox(height: 12),
            Text(" • 100% Commission",
                style: AppStyles.body1.copyWith(color: AppColors.third)),
            Text(" • Dedicated Support Line 7 Days A Week",
                style: AppStyles.body1.copyWith(color: AppColors.third)),
            Text(" • Dotloop Transaction Management",
                style: AppStyles.body1.copyWith(color: AppColors.third)),
            Text(" • BoomTown Website & Agent CRM",
                style: AppStyles.body1.copyWith(color: AppColors.third)),
            Text(" • Initial & Ongoing Training",
                style: AppStyles.body1.copyWith(color: AppColors.third)),
            Text(" • New Agent Shadow Program",
                style: AppStyles.body1.copyWith(color: AppColors.third)),
            Text(" • DW “Social”",
                style: AppStyles.body1.copyWith(color: AppColors.third)),
            Text(" • DW “List Boost”",
                style: AppStyles.body1.copyWith(color: AppColors.third)),
            Text(" • Zillow Leads",
                style: AppStyles.body1.copyWith(color: AppColors.third)),
            Text(" • Prime Street Leads",
                style: AppStyles.body1.copyWith(color: AppColors.third)),
            Text(" • OpCity Leads",
                style: AppStyles.body1.copyWith(color: AppColors.third)),
            Text(" • Open House Connect",
                style: AppStyles.body1.copyWith(color: AppColors.third)),
            Text(" • FSBO / Expired / Withdrawn Data",
                style: AppStyles.body1.copyWith(color: AppColors.third)),
            const SizedBox(height: 20),
            CustomButton(
              text: "Update Plan",
              onTap: () {
                Get.toNamed(AppRoutes.upgradePlan);
              },
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
