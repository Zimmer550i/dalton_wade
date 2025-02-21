import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/custom_app_bar.dart';
import 'package:flutter/material.dart';

class Commissions extends StatelessWidget {
  const Commissions({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> data = [
      "123 Main Street",
      "\$3,000",
      "124 Main Street",
      "\$4,000",
    ];
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Text(
                "Commissions",
                style: AppStyles.h07.copyWith(
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (int i = 0; i < data.length; i += 2)
                        _entry(
                          data[i],
                          data[i + 1],
                          hasUnderline: i != data.length - 2,
                        ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
                decoration: BoxDecoration(color: AppColors.primary),
                child: Center(
                  child: Text(
                    "Total Commissions Received \nThis Year: \$6,000",
                    textAlign: TextAlign.center,
                    style: AppStyles.body1Bold.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _entry(String i, String data, {bool hasUnderline = true}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 12,
        ),
        Text(
          "Property Address",
          style: AppStyles.body2.copyWith(color: AppColors.third),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          i,
          style: AppStyles.body1.copyWith(color: Color(0xff3c3c3c)),
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          "Commission Received",
          style: AppStyles.body2.copyWith(color: AppColors.third),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          data,
          style: AppStyles.body1.copyWith(color: Color(0xff3c3c3c)),
        ),
        const SizedBox(
          height: 8,
        ),
        hasUnderline
            ? Divider(
                color: AppColors.third,
              )
            : Container()
      ],
    );
  }
}
