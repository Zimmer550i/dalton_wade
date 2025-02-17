import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/app_icons.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/custom_app_bar.dart';
import 'package:dalton_wade/views/base/svg.dart';
import 'package:dalton_wade/views/base/training_videos.dart';
import 'package:flutter/material.dart';

class TrainingSessions extends StatelessWidget {
  const TrainingSessions({super.key});

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
              const SizedBox(height: 16),
              Text(
                "Training Sessions",
                style: AppStyles.h07.copyWith(
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "Explore Dalton Wade’s extensive collection of training videos designed for our agents to watch at their convenience or revisit for a quick refresher. Additionally, don’t miss our weekly live training sessions. Register for a class or enjoy one of our on-demand videos below. Bookmark your favorites for quick access in your profile!",
                style: AppStyles.body2.copyWith(
                  color: AppColors.third,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                height: 48,
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                  // vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: Color(0xffF8F8F8),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  spacing: 12,
                  children: [
                    Svg(
                      asset: AppIcons.search,
                      color: AppColors.third,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search for Training Topic",
                          hintStyle: AppStyles.body2.copyWith(
                            color: AppColors.third,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "Register for Live Clases",
                style: TextStyle(
                  fontFamily: "OpenSans",
                  fontWeight: FontWeight.w700,
                  color: AppColors.dark,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                "Click on the links to register!",
                style: TextStyle(
                  fontFamily: "OpenSans",
                  fontWeight: FontWeight.w400,
                  color: AppColors.dark,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "Orientation",
                style: TextStyle(
                  fontFamily: "OpenSans",
                  fontWeight: FontWeight.w400,
                  color: AppColors.link,
                  fontSize: 18,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.link,
                  decorationThickness: 2
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                "Paradym Training",
                style: TextStyle(
                  fontFamily: "OpenSans",
                  fontWeight: FontWeight.w400,
                  color: AppColors.link,
                  fontSize: 18,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.link,
                  decorationThickness: 2
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                "Dotloop Training",
                style: TextStyle(
                  fontFamily: "OpenSans",
                  fontWeight: FontWeight.w400,
                  color: AppColors.link,
                  fontSize: 18,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.link,
                  decorationThickness: 2
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "On-Demand Videos",
                style: TextStyle(
                  fontFamily: "OpenSans",
                  fontWeight: FontWeight.w700,
                  color: AppColors.dark,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TrainingVideos(),
              const SizedBox(
                height: 8,
              ),
              TrainingVideos(),
              const SizedBox(
                height: 8,
              ),
              TrainingVideos(),
              const SizedBox(
                height: 8,
              ),
              TrainingVideos(),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
