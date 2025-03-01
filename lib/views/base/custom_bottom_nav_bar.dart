import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/app_icons.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/svg.dart';
import 'package:flutter/cupertino.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int index;
  final Function(int)? onChange;
  const CustomBottomNavBar({super.key, required this.index, this.onChange});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: AppColors.primary,
              width: 2,
            ),
          ),
          color: AppColors.white,
          boxShadow: AppColors.shadow,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 20,
          ),
          child: Row(
            children: [
              Expanded(child: navItem(AppIcons.user, "Profile", 0)),
              Expanded(child: navItem(AppIcons.tools, "Tools", 1)),
              Expanded(child: navItem(AppIcons.home, "Home", 2)),
              Expanded(child: navItem(AppIcons.messges, "Messages", 3)),
              Expanded(child: navItem(AppIcons.setting, "Settings", 4)),
            ],
          ),
        ),
      ),
    );
  }

  Widget navItem(String asset, String label, int position) {
    return GestureDetector(
      onTap: () {
        if (onChange != null) {
          onChange!(position);
        }
      },
      behavior: HitTestBehavior.translucent,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: SizedBox(
          // width: 64,
          height: 48,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Svg(
                asset: asset,
                color: index == position ? AppColors.primary : AppColors.third,
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                label,
                style: AppStyles.body2Bold.copyWith(
                  color: index == position ? AppColors.primary : AppColors.third,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
