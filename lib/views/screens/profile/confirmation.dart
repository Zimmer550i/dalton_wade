import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/custom_app_bar.dart';
import 'package:dalton_wade/views/base/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Confirmation extends StatelessWidget {
  const Confirmation({super.key});

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
                "Thank You",
                style: AppStyles.h07.copyWith(
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "Your order has been processed. Please check your email for receipt.",
                style: AppStyles.body2.copyWith(
                  color: AppColors.third,
                ),
              ),
              const SizedBox(height: 40),
              CustomButton(
                text: "Back to Profile",
                onTap: () {
                  Get.back();
                  Get.back();
                  Get.back();
                  Get.back();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
