import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/app_icons.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/custom_app_bar.dart';
import 'package:dalton_wade/views/base/custom_expension_panel.dart';
import 'package:dalton_wade/views/base/svg.dart';
import 'package:flutter/material.dart';

class KnowledgeGuide extends StatelessWidget {
  const KnowledgeGuide({super.key});

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
                "Knowledge Guide",
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
                          hintText: "Search for Topic",
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
                height: 8,
              ),
              Text(
                "Accounting, Administration and office Info",
                style: AppStyles.body2Bold.copyWith(
                  color: AppColors.dark,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              CustomExpensionPanel(
                title: "Cancel automatic PayPal payments",
                subTitle:
                    "From time to time there is a legitimate reason for not having a required file. In these cases, we have an exemption request available to you in dotloop. Here is how to access it:",
                steps: [
                  "add document",
                  "templates",
                  "go to the exemption folder",
                  "the exemption request is the only document available in the folder",
                  "check the box and copy it to the loop",
                  "fill it out. It is super easy with just two fields. no signatures required.",
                  "drag it and drop it on top of the required item or placeholder.",
                  "this way when you submit it for review, the system will allow it and it will explain to us the reason that requirement should be exempted."
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "Contracts and Compliance",
                style: AppStyles.body2Bold.copyWith(
                  color: AppColors.dark,
                ),
              ),const SizedBox(
                height: 8,
              ),
              CustomExpensionPanel(
                title: "Exemption Request",
                subTitle:
                    "From time to time there is a legitimate reason for not having a required file. In these cases, we have an exemption request available to you in dotloop. Here is how to access it:",
                steps: [
                  "add document",
                  "templates",
                  "go to the exemption folder",
                  "the exemption request is the only document available in the folder",
                  "check the box and copy it to the loop",
                  "fill it out. It is super easy with just two fields. no signatures required.",
                  "drag it and drop it on top of the required item or placeholder.",
                  "this way when you submit it for review, the system will allow it and it will explain to us the reason that requirement should be exempted."
                ],
              ),const SizedBox(
                height: 8,
              ),
              CustomExpensionPanel(
                title: "Lease/Rental Escrow Account Information New",
                subTitle:
                    "From time to time there is a legitimate reason for not having a required file. In these cases, we have an exemption request available to you in dotloop. Here is how to access it:",
                steps: [
                  "add document",
                  "templates",
                  "go to the exemption folder",
                  "the exemption request is the only document available in the folder",
                  "check the box and copy it to the loop",
                  "fill it out. It is super easy with just two fields. no signatures required.",
                  "drag it and drop it on top of the required item or placeholder.",
                  "this way when you submit it for review, the system will allow it and it will explain to us the reason that requirement should be exempted."
                ],
              ),const SizedBox(
                height: 8,
              ),
              CustomExpensionPanel(
                title: "Cancel automatic PayPal payments",
                subTitle:
                    "From time to time there is a legitimate reason for not having a required file. In these cases, we have an exemption request available to you in dotloop. Here is how to access it:",
                steps: [
                  "add document",
                  "templates",
                  "go to the exemption folder",
                  "the exemption request is the only document available in the folder",
                  "check the box and copy it to the loop",
                  "fill it out. It is super easy with just two fields. no signatures required.",
                  "drag it and drop it on top of the required item or placeholder.",
                  "this way when you submit it for review, the system will allow it and it will explain to us the reason that requirement should be exempted."
                ],
              ),const SizedBox(
                height: 8,
              ),
              CustomExpensionPanel(
                title: "Cancel automatic PayPal payments",
                subTitle:
                    "From time to time there is a legitimate reason for not having a required file. In these cases, we have an exemption request available to you in dotloop. Here is how to access it:",
                steps: [
                  "add document",
                  "templates",
                  "go to the exemption folder",
                  "the exemption request is the only document available in the folder",
                  "check the box and copy it to the loop",
                  "fill it out. It is super easy with just two fields. no signatures required.",
                  "drag it and drop it on top of the required item or placeholder.",
                  "this way when you submit it for review, the system will allow it and it will explain to us the reason that requirement should be exempted."
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}