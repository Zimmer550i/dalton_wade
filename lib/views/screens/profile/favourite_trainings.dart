import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/app_icons.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/custom_app_bar.dart';
import 'package:dalton_wade/views/base/svg.dart';
import 'package:dalton_wade/views/base/training_videos.dart';
import 'package:flutter/material.dart';

class FavouriteTrainings extends StatelessWidget {
  const FavouriteTrainings({super.key});

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
                "Favourite Training Sessions",
                style: AppStyles.h07.copyWith(
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(height: 8),
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
              const SizedBox(height: 8),
              TrainingVideos(),
              const SizedBox(height: 16),
              TrainingVideos(),
              const SizedBox(height: 16),
              TrainingVideos(),
              const SizedBox(height: 16),
              TrainingVideos(),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
