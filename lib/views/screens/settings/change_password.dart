import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/custom_app_bar.dart';
import 'package:dalton_wade/views/base/custom_button.dart';
import 'package:dalton_wade/views/base/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final prevController = TextEditingController();
  final newController = TextEditingController();
  final confirmController = TextEditingController();

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
                "Change Password",
                style: AppStyles.h07.copyWith(
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "Your new password must be different form your previous password.",
                style: AppStyles.body2.copyWith(
                  color: AppColors.third,
                ),
              ),
              const SizedBox(height: 12),
              CustomTextField(
                label: "Current Password",
                isObscured: true,
                warningText: "",
                controller: prevController,
              ),
              CustomTextField(
                label: "New Password",
                isObscured: true,
                warningText: "Must contain a number and least of 6 characters",
                controller: newController,
              ),
              CustomTextField(
                label: "Confirm Password",
                isObscured: true,
                warningText: "Must contain a number and least of 6 characters",
                controller: confirmController,
              ),
              const SizedBox(
                height: 24,
              ),
              CustomButton(
                text: "Change Password",
                onTap: () {
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
