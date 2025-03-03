import 'package:dalton_wade/models/box_icon_data.dart';
import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/custom_app_bar.dart';
import 'package:dalton_wade/views/base/grid_box.dart';
import 'package:flutter/material.dart';

class TemplatePage extends StatelessWidget {
  final String title;
  final String subTitle;
  final List<BoxIconData> additionalButtons;
  const TemplatePage({
    super.key,
    required this.title,
    required this.subTitle,
    this.additionalButtons = const [],
  });

  @override
  Widget build(BuildContext context) {
    var data = [
      ...additionalButtons
    ];
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
                title,
                style: AppStyles.h07.copyWith(
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                subTitle,
                style: AppStyles.body2.copyWith(
                  color: AppColors.third,
                ),
              ),
              const SizedBox(height: 16),
              GridBox(data: data),
            ],
          ),
        ),
      ),
    );
  }
}
