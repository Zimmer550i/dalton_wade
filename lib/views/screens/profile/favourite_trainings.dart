import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/app_icons.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/custom_app_bar.dart';
import 'package:dalton_wade/views/base/svg.dart';
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
              trainingSessions(),
              const SizedBox(height: 16),
              trainingSessions(),
              const SizedBox(height: 16),
              trainingSessions(),
              const SizedBox(height: 16),
              trainingSessions(),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Container trainingSessions() {
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
