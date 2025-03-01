import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/custom_button.dart';
import 'package:dalton_wade/views/base/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SingleChildScrollView(
          reverse: true,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 194,
                ),
                Image.asset(
                  "assets/images/logo_colored.png",
                  width: 999,
                  fit: BoxFit.fitWidth,
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Forget\npassword?",
                  style: AppStyles.h01.copyWith(
                    color: AppColors.primary,
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  "Enter the email address you used when you signed up, and we will send you instructions to reset your password.",
                  style: AppStyles.body1.copyWith(
                    color: AppColors.third,
                  ),
                ),
                const SizedBox(height: 60),
                CustomTextField(label: "Email Address"),
                const SizedBox(
                  height: 40,
                ),
                CustomButton(
                  onTap: () {
                    Get.back();
                  },
                  text: "Request Password Reset",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
