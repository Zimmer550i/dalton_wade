import 'package:dalton_wade/helpers/route.dart';
import 'package:dalton_wade/models/box_icon_data.dart';
import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/app_icons.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/box_icon.dart';
import 'package:dalton_wade/views/base/svg.dart';
import 'package:dalton_wade/views/base/user_avatar.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    var data = [
      BoxIconData(
        assetPath: AppIcons.team,
        label: "My Plan",
        link: AppRoutes.myPlan,
      ),
      BoxIconData(
        assetPath: AppIcons.traning,
        label: "Favourite Tranings",
        link: AppRoutes.favouriteTrainings,
      ),
      BoxIconData(assetPath: AppIcons.messges, label: "View Messages"),
      BoxIconData(
          assetPath: AppIcons.commissionPayments, label: "Commission Payments"),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondary,
        toolbarHeight: 140,
        leadingWidth: 100,
        leading: Padding(
          padding: EdgeInsets.only(
            left: 20,
          ),
          child: UserAvatar(
            size: 80,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Olivia Wilson",
              style: AppStyles.h02.copyWith(
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              "email@reallygreatsite.com",
              style: AppStyles.body2.copyWith(
                color: AppColors.white2,
              ),
            ),
            Text(
              "555-555-5555",
              style: AppStyles.body2.copyWith(
                color: AppColors.white2,
              ),
            ),
            Text(
              "Services Area(s): Tampa, EL",
              style: AppStyles.body2.copyWith(
                color: AppColors.white2,
              ),
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Get.toNamed(AppRoutes.editProfile);
            },
            child: Container(
              height: 40,
              width: 40,
              color: Colors.white.withAlpha((255 * 0.4).toInt()),
              child: Svg(
                asset: AppIcons.editProfile,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg.jpg",
            fit: BoxFit.fitHeight,
          ),
          Container(
            color: Colors.white.withAlpha(
              (255 * 0.7).toInt(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 24,
            ),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 1.1),
              itemCount: data.length,
              itemBuilder: (context, index) {
                return BoxIcon(data: data[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
