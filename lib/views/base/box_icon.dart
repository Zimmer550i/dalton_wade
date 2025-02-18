import 'package:dalton_wade/models/box_icon_data.dart';
import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/svg.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:url_launcher/url_launcher.dart';

class BoxIcon extends StatelessWidget {
  final BoxIconData data;
  const BoxIcon({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (data.link != null) {
          if (data.link!.startsWith("/")) {
            Get.toNamed(data.link!);
          } else {
            launchUrl(Uri.parse(data.link!));
          }
        } else {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'No function has been attached to this "${data.label}" button.',
                style: AppStyles.smallBold.copyWith(
                  color: Colors.white,
                ),
              ),
              backgroundColor: const Color(0xffD34A39),
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 10,
            ),
          );
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
            SizedBox(
              width: 124,
              child: Text(
                data.label,
                textAlign: TextAlign.center,
                style: AppStyles.body2Bold.copyWith(
                  color: AppColors.dark,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
