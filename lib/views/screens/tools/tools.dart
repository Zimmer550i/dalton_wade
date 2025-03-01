import 'package:dalton_wade/helpers/route.dart';
import 'package:dalton_wade/models/box_icon_data.dart';
import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/app_icons.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/box_icon.dart';
import 'package:flutter/material.dart';

class Tools extends StatelessWidget {
  const Tools({super.key});

  @override
  Widget build(BuildContext context) {
    var data = [
      BoxIconData(
        assetPath: AppIcons.traning,
        label: "Tranings",
        link: AppRoutes.trainingSessions,
      ),
      BoxIconData(
        assetPath: AppIcons.getSupport,
        label: "Get Support",
        link: AppRoutes.support,
      ),
      BoxIconData(
        assetPath: AppIcons.team,
        label: "BoldTrail",
      ),
      BoxIconData(
          assetPath: AppIcons.team,
          label: "Dotloop",
          link: "https://www.dotloop.com/"),
      BoxIconData(
        assetPath: AppIcons.team,
        label: "Turner Title",
        link: AppRoutes.turnerTitle,
      ),
      BoxIconData(
        assetPath: AppIcons.team,
        label: "Pioneer Mortgage Funding Inc.",
        link: AppRoutes.pioneerMortgage,
      ),
      BoxIconData(
        assetPath: AppIcons.team,
        label: "FSBOs",
      ),
      BoxIconData(
        assetPath: AppIcons.team,
        label: "Open House List",
      ),
      BoxIconData(
        assetPath: AppIcons.team,
        label: "MiMutual Mortgage",
        link: AppRoutes.miMitualMortgage,
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 72,
        backgroundColor: AppColors.secondary,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Tools",
          style: AppStyles.h02.copyWith(
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg.jpg",
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.white.withAlpha(
              (255 * 0.7).toInt(),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.1,
                      ),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return BoxIcon(data: data[index]);
                      },
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
