import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/app_icons.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/svg.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TrainingVideos extends StatelessWidget {
  final String? watchNowUrl;
  const TrainingVideos({
    super.key,
    this.watchNowUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color(0xffF4F4F4),
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              "assets/images/card_image.png",
              width: 128,
              height: 194,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            flex: 100,
            child: Column(
              children: [
                Text(
                  "Getting Started: Welcome to Dalton Wade",
                  style: AppStyles.body2Bold.copyWith(
                    color: AppColors.dark,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Claren and Lisa welcome you to Dalton Wade. they provide an overview of the resources, programs, support and training opportunities available to help you build your business.",
                  style: AppStyles.small.copyWith(
                    color: AppColors.third,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  spacing: 4,
                  children: [
                    Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        shape: BoxShape.circle,
                      ),
                      child: Svg(
                        asset: AppIcons.bookmarkLine,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          launchUrl(
                            Uri.parse("https://www.youtube.com"),
                          );
                        },
                        child: Container(
                          height: 36,
                          decoration: BoxDecoration(
                            color: AppColors.secondary,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Text(
                              "Watch Now",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                        color: AppColors.secondary,
                        shape: BoxShape.circle,
                      ),
                      child: Svg(
                        asset: AppIcons.arrowRightLine,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
