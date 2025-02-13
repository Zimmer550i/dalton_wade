import 'package:dalton_wade/helpers/route.dart';
import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/app_icons.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/custom_button.dart';
import 'package:dalton_wade/views/base/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo_colored.png",
              width: 999,
              fit: BoxFit.fitWidth,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Welcome,\nagents!",
              style: AppStyles.h01.copyWith(
                color: AppColors.primary,
                height: 1.2,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "Login in below to access your account!",
              style: AppStyles.body1.copyWith(
                color: AppColors.third,
              ),
            ),
            const SizedBox(height: 20),
            CustomTextField(label: "Email"),
            CustomTextField(
              label: "Password",
              isObscured: true,
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SvgPicture.asset(
                    AppIcons.checkbox,
                    color: AppColors.third,
                  ),
                ),
                Text(
                  "Remember Me",
                  style: AppStyles.body2.copyWith(
                    color: AppColors.third,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutes.forgetPassword);
                  },
                  child: Text(
                    "Forget Password?",
                    style: AppStyles.body2Bold.copyWith(
                      color: AppColors.third,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            CustomButton(
              text: "Log In",
            ),
            const SizedBox(
              height: 48,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: AppStyles.body1.copyWith(
                    color: AppColors.third,
                  ),
                ),
                Text(
                  " Sign Up",
                  style: AppStyles.h06,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
