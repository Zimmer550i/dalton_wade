import 'package:dalton_wade/helpers/route.dart';
import 'package:dalton_wade/models/box_icon_data.dart';
import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/app_icons.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/box_icon.dart';
import 'package:dalton_wade/views/base/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ContactDetails extends StatelessWidget {
  const ContactDetails({super.key});

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
              const SizedBox(
                height: 16,
              ),
              Text(
                "View Contact",
                style: AppStyles.h07.copyWith(
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12,
                children: [
                  ClipOval(
                    child: Image.asset(
                      "assets/images/faces/3.png",
                      height: 48,
                      width: 48,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Olivia Wilson",
                        style: AppStyles.h05.copyWith(
                          color: AppColors.dark,
                        ),
                      ),
                      Text(
                        "email@reallygreatsite.com",
                        style: AppStyles.body2.copyWith(
                          color: AppColors.dark,
                        ),
                      ),
                      Text(
                        "555-555-5555",
                        style: AppStyles.body2.copyWith(
                          color: AppColors.dark,
                        ),
                      ),
                      Text(
                        "Services Area(s): Tampa, EL",
                        style: AppStyles.body2.copyWith(
                          color: AppColors.dark,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BoxIcon(
                    data: BoxIconData(
                      assetPath: AppIcons.call,
                      label: "Call",
                      link: "tel: +1800229933"
                    ),
                  ),
                  const SizedBox(
                    width: 48,
                  ),
                  BoxIcon(
                    data: BoxIconData(
                      assetPath: AppIcons.messges,
                      label: "View Messages",
                      link: AppRoutes.chat
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
