import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/app_icons.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/svg.dart';
import 'package:flutter/material.dart';

class CustomExpensionPanel extends StatefulWidget {
  final String title;
  final String? subTitle;
  final List<String> steps;
  const CustomExpensionPanel({
    super.key,
    required this.title,
    this.subTitle,
    this.steps = const [],
  });

  @override
  State<CustomExpensionPanel> createState() => _CustomExpensionPanelState();
}

class _CustomExpensionPanelState extends State<CustomExpensionPanel> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(
          milliseconds: 300,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(
            0xffF8F8F8,
          ),
        ),
        child: Row(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.secondary,
              ),
              child: AnimatedRotation(
                duration: const Duration(milliseconds: 300),
                turns: isExpanded ? 0.25 : 0.75,
                child: Svg(
                  asset: AppIcons.arrowLeftSLine,
                  color: AppColors.white,
                  height: 16,
                  width: 16,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: AppStyles.body2Bold.copyWith(
                      color: AppColors.dark,
                    ),
                  ),
                  AnimatedSize(
                    duration: const Duration(
                      milliseconds: 300,
                    ),
                    child: !isExpanded
                        ? SizedBox.shrink()
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.subTitle ?? "",
                                style: AppStyles.small.copyWith(
                                  color: AppColors.grey,
                                ),
                              ),
                              if (widget.steps.isNotEmpty)
                                const SizedBox(
                                  height: 20,
                                ),
                              ...widget.steps.map((e) {
                                return Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    " ${widget.steps.indexOf(e) + 1}. $e",
                                    style: AppStyles.small.copyWith(
                                      color: AppColors.grey,
                                    ),
                                  ),
                                );
                              }),
                            ],
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
}
