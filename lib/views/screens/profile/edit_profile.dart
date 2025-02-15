import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/app_icons.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/custom_app_bar.dart';
import 'package:dalton_wade/views/base/custom_button.dart';
import 'package:dalton_wade/views/base/custom_text_field.dart';
import 'package:dalton_wade/views/base/svg.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController nameController = TextEditingController(text: "Olivai Wilson");
  TextEditingController emailController =
      TextEditingController(text: "email@reallygreatesite.com");
  TextEditingController phoneController = TextEditingController(text: "555 555 555");
  TextEditingController areaController = TextEditingController(text: "Tampa,FL");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 14,
                    bottom: 10,
                  ),
                  child: Text(
                    "Edit Profile",
                    style: AppStyles.h07.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(999),
                    child: Image.asset(
                      "assets/images/user.png",
                      height: 120,
                      width: 120,
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                    ),
                    child: Svg(
                      asset: AppIcons.editProfile,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              CustomTextField(
                label: "Full Name",
                controller: nameController,
              ),
              const SizedBox(height: 12),
              CustomTextField(
                label: "Email",
                controller: emailController,
              ),
              const SizedBox(height: 12),
              CustomTextField(
                label: "Phone",
                controller: phoneController,
              ),
              const SizedBox(height: 12),
              CustomTextField(
                label: "Service Area(s)",
                controller: areaController,
              ),
              const SizedBox(height: 40),
              CustomButton(
                text: "Save Profile",
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
