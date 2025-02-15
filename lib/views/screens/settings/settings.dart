import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/app_icons.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/custom_app_bar.dart';
import 'package:dalton_wade/views/base/custom_switch.dart';
import 'package:dalton_wade/views/base/svg.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              child: Text(
                "Settings & Information",
                style: AppStyles.h07.copyWith(
                  color: AppColors.primary,
                ),
              ),
            ),
            section(
              "General Settings",
              children: [
                settingOptions(
                  "Hide Profile",
                  AppIcons.eyeOff,
                  subTitle:
                      "Turning this on will make your profile invisible to other agents by hiding it form the contact list.",
                  switchCallback: (val) {},
                ),
                settingOptions(
                  "Enable Push Notification",
                  AppIcons.pushNotification,
                  switchCallback: (val) {},
                ),
                settingOptions("Change Password", AppIcons.key),
                settingOptions("Send Feedback About App", AppIcons.feedback),
              ],
            ),
            section(
              "Information",
              children: [
                settingOptions("About App", AppIcons.aboutApp),
                settingOptions("Privacy Policy", AppIcons.privacy),
                settingOptions("Terms & Conditions", AppIcons.terms),
              ],
            ),
          ],
        ),
      ),
    );
  }

  section(String s, {required List<Widget> children}) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          height: 48,
          width: double.infinity,
          color: Color(0xffEDEDED),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              s,
              style: AppStyles.h06.copyWith(
                color: AppColors.third,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 12,
          ),
          child: Column(
            children: children,
          ),
        ),
      ],
    );
  }

  settingOptions(
    String title,
    String iconPath, {
    String? nextRoute,
    String? subTitle,
    Function(bool)? switchCallback,
  }) {
    return GestureDetector(
      onTap: () {
        if (nextRoute != null) {
          try {
            Get.toNamed(nextRoute);
          } catch (e) {
            debugPrint(e.toString());
          }
        }
      },
      child: Container(
        padding: EdgeInsets.only(
            // top: 12,
            ),
        constraints: BoxConstraints(
          minHeight: 48,
        ),
        child: Row(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Svg(asset: iconPath),
                      const SizedBox(
                        width: 16,
                      ),
                      Text(
                        title,
                        style: AppStyles.body1Bold.copyWith(
                          color: AppColors.third,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 40,
                      ),
                      if (subTitle != null)
                        Expanded(
                          child: Text(
                            subTitle,
                            softWrap: true,
                            style: AppStyles.body2.copyWith(
                              color: AppColors.grey,
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
            switchCallback != null
                ? CustomSwitch(
                    value: false,
                    onChanged: switchCallback,
                  )
                : Transform.flip(
                    flipX: true,
                    child: Svg(asset: AppIcons.arrowLeftSLine),
                  ),
          ],
        ),
      ),
    );
  }
}
