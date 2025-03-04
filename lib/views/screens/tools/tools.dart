import 'package:dalton_wade/helpers/route.dart';
import 'package:dalton_wade/models/box_icon_data.dart';
import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/app_icons.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/grid_box.dart';
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
        assetPath: "assets/images/bold_trial.png",
        label: "BoldTrail",
        playStore:
            "https://play.google.com/store/apps/details?id=com.insiderealestate.boldtrail&hl=en_US",
        appStore: "https://apps.apple.com/us/app/boldtrail/id6502782766",
      ),
      BoxIconData(
        assetPath: "assets/images/dotloop.png",
        label: "Dotloop",
        playStore:
            "https://play.google.com/store/apps/details?id=com.dotloop.mobile&hl=en_US",
        appStore: "https://apps.apple.com/us/app/dotloop/id605565510",
      ),
      BoxIconData(
        assetPath: "assets/images/TurnerTitle.png",
        label: "Turner Title",
        link: AppRoutes.turnerTitle,
      ),
      BoxIconData(
        assetPath: "assets/images/Pioneer.png",
        label: "Pioneer Mortgage Funding Inc.",
        link: AppRoutes.pioneerMortgage,
      ),
      BoxIconData(
        assetPath: "assets/images/fsbo.png",
        label: "FSBOs",
        link:
            "https://joindaltonwade.com/open-house-connect-redx/florida-open-house-connect-redx-lists/",
      ),
      BoxIconData(
          assetPath: "assets/images/openhouseconnect.png",
          label: "Open House List",
          link: "https://joindaltonwade.com/open-house-connect-redx/"),
      BoxIconData(
        assetPath: "assets/images/MiMutual.png",
        label: "MiMutual Mortgage",
        link: AppRoutes.miMitualMortgage,
      ),
      BoxIconData(
        assetPath: AppIcons.team,
        label: "Facebook Group",
        link: "https://www.facebook.com/groups/dwagents",
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
                    GridBox(data: data),
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
