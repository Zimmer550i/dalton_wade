import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:dalton_wade/models/box_icon_data.dart';
import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/svg.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:url_launcher/url_launcher.dart';

class BoxIcon extends StatelessWidget {
  final BoxIconData data;
  final bool isPlaceholder;
  const BoxIcon({super.key, required this.data, this.isPlaceholder = false});

  @override
  Widget build(BuildContext context) {
    if (isPlaceholder) {
      return SizedBox(
        width: 124,
      );
    }

    return GestureDetector(
      onTap: () {
        if (Platform.isAndroid && data.playStore != null) {
          launchUrl(Uri.parse(data.playStore!));
        }
        if (Platform.isIOS && data.appStore != null) {
          launchUrl(Uri.parse(data.appStore!));
        }

        if (data.link != null) {
          if (data.link!.startsWith("/")) {
            Get.toNamed(data.link!);
          } else {
            launchUrl(Uri.parse(data.link!));
          }
        }

        if (data.link != null) {
          if (Platform.isAndroid && data.playStore == null) {
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
          if (Platform.isIOS && data.appStore == null) {
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
              child: AutoSizeText(
                data.label,
                maxLines: 2, // Allow up to 2 lines
                textAlign: TextAlign.center,
                style: AppStyles.body2Bold.copyWith(
                  color: AppColors.dark,
                ),
                minFontSize: 10, // Ensures text does not shrink too much
                overflow:
                    TextOverflow.ellipsis, // Optional: Adds "..." if needed
              ),
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
