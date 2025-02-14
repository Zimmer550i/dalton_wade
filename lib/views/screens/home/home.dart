import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/app_icons.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/svg.dart';
import 'package:dalton_wade/views/base/user_avatar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final Function(int)? changeIndex;
  const Home({
    super.key,
    this.changeIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  "assets/images/card_image.png",
                  fit: BoxFit.fitWidth,
                ),
                Positioned.fill(
                  child: Container(
                    color: Colors.black.withAlpha(
                      127,
                    ),
                    child: Center(),
                  ),
                ),
                Positioned(
                  top: 68,
                  bottom: 68,
                  child: Image.asset("assets/images/logo_white.png"),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 20,
              ),
              color: AppColors.secondary,
              child: Row(
                spacing: 12,
                children: [
                  Expanded(
                    child: categories(
                      AppIcons.user,
                      "AGENT PROFILE",
                      0,
                    ),
                  ),
                  Expanded(
                    child: categories(
                      AppIcons.tools,
                      "TOOLS\n",
                      1,
                    ),
                  ),
                  Expanded(
                    child: categories(
                      AppIcons.messges,
                      "CONTACTS & MESSAGE",
                      3,
                    ),
                  ),
                  Expanded(
                    child: categories(
                      AppIcons.setting,
                      "YOUR SETTINGS",
                      4,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Announcements",
                    style: AppStyles.h02.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Aldus PageMaker including versions of Lorem Ipsum.",
                    style: AppStyles.body2.copyWith(
                      color: AppColors.third,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget categories(String asset, String label, int position) {
    return GestureDetector(
      onTap: () {
        if (changeIndex != null) {
          changeIndex!(position);
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 8,
        ),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          children: [
            Svg(
              asset: asset,
              color: AppColors.third,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              label,
              textAlign: TextAlign.center,
              style: AppStyles.smallBold.copyWith(
                color: AppColors.third,
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      toolbarHeight: 72,
      backgroundColor: AppColors.secondary,
      leading: Padding(
        padding: const EdgeInsets.only(
          left: 20,
        ),
        child: UserAvatar(),
      ),
      actions: [
        Stack(
          alignment: Alignment.center,
          children: [
            Svg(
              asset: AppIcons.notification,
              color: Colors.white,
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                height: 13,
                width: 13,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(
                    width: 2,
                    color: AppColors.secondary,
                  ),
                ),
                child: Center(
                  child: Text(
                    "1",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 8,
                        height: 0.5,
                        color: AppColors.secondary),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 16),
        Svg(
          asset: AppIcons.search,
          color: Colors.white,
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
