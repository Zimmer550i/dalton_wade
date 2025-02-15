import 'package:dalton_wade/helpers/route.dart';
import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/app_icons.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/custom_app_bar.dart';
import 'package:dalton_wade/views/base/svg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpgradePlan extends StatelessWidget {
  const UpgradePlan({super.key});

  @override
  Widget build(BuildContext context) {
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
                "Upgrade Plan",
                style: AppStyles.h07.copyWith(
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "Upgrade your Dalton Wade plan below!",
                style: AppStyles.body2.copyWith(
                  color: AppColors.third,
                ),
              ),
              const SizedBox(height: 16),
              _package("BUSINESS BUILDER", "\$129/mo + \$79 per transaction"),
              const SizedBox(height: 12),
              _package("No Monthly Fees", "\$390 per transaction"),
              const SizedBox(height: 12),
              Text(
                "Enjoy all the benefits of our Starter Plan, with the addition of:",
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
              // CustomButton(
              //   text: "Update Plan",
              //   onTap: () {
              //     Get.toNamed(AppRoutes.upgradePlan);
              //   },
              // ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _package(String name, String price) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 21.5,
      ),
      decoration: BoxDecoration(
        color: Color(0xffF4F4F4),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w900,
              color: AppColors.dark,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            price,
            style: AppStyles.h06.copyWith(
              color: AppColors.dark,
            ),
          ),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: () {
              Get.toNamed(AppRoutes.checkout);
            },
            child: Row(
              spacing: 8,
              children: [
                Expanded(
                  child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(99),
                    ),
                    child: Center(
                      child: Text(
                        "Upgrade",
                        style: AppStyles.body1Bold.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                  child: Svg(
                    asset: AppIcons.arrowRightLine,
                    color: Colors.white,
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
