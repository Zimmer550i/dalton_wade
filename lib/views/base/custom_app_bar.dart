import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/app_icons.dart';
import 'package:dalton_wade/views/base/svg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.secondary,
      toolbarHeight: 72,
      actions: [
        Image.asset(
          "assets/images/logo_white.png",
          height: 40,
        ),
        SizedBox(
          width: 20,
        ),
      ],
      leading: Padding(
        padding: const EdgeInsets.only(
          left: 20,
        ),
        child: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Center(
              child: Svg(
                asset: AppIcons.arrowLeftSLine,
                height: 24,
                width: 24,
                color: AppColors.primary,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  @override
  Size get preferredSize => const Size.fromHeight(72);
}
