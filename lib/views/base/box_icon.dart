import 'package:dalton_wade/models/box_icon_data.dart';
import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/svg.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class BoxIcon extends StatelessWidget {
  final BoxIconData data;
  const BoxIcon({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (data.link != null) {
          Get.toNamed(data.link!);
        }
      },
      child: SizedBox(
        width: 124,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 124,
              width: 124,
              color: AppColors.secondary,
              child: Svg(
                asset: data.assetPath,
                height: 64,
                width: 64,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              data.label,
              textAlign: TextAlign.center,
              style: AppStyles.body2Bold.copyWith(
                color: AppColors.dark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
