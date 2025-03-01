import 'package:dalton_wade/helpers/route.dart';
import 'package:dalton_wade/models/box_icon_data.dart';
import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/app_icons.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/box_icon.dart';
import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    var data = [
      BoxIconData(
        assetPath: AppIcons.messges,
        label: "View Messages",
        link: AppRoutes.inbox,
      ),
      BoxIconData(
        assetPath: AppIcons.contact,
        label: "Agents List",
        link: AppRoutes.contacts,
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 72,
        backgroundColor: AppColors.secondary,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Contact & Messages",
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
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 24,
            ),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 1.1),
              itemCount: data.length,
              itemBuilder: (context, index) {
                return BoxIcon(data: data[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
