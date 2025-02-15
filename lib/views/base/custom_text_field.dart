import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/app_icons.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/svg.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final TextEditingController? controller;
  final bool isObscured;
  final String? warningText;
  final TextInputType? keyboardType;
  const CustomTextField({
    super.key,
    required this.label,
    this.controller,
    this.isObscured = false,
    this.warningText,
    this.keyboardType,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool hideText = false;

  @override
  void initState() {
    super.initState();
    hideText = widget.isObscured;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextField(
                style: AppStyles.body1Bold,
                obscureText: hideText,
                keyboardType: widget.keyboardType,
                controller: widget.controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  label: Text(
                    widget.label,
                    style: AppStyles.body1.copyWith(
                      color: AppColors.third,
                    ),
                  ),
                  floatingLabelStyle: AppStyles.body2.copyWith(
                    color: AppColors.third,
                  ),
                ),
              ),
            ),
            if (widget.isObscured)
              GestureDetector(
                onTap: () {
                  setState(() {
                    hideText = !hideText;
                  });
                },
                child: Svg(
                  asset: hideText ? AppIcons.mdiLightEye : AppIcons.eyeOff,
                  color: AppColors.third,
                ),
              ),
          ],
        ),
        Container(
          height: 1,
          width: double.infinity,
          color: AppColors.third,
        ),
        if (widget.warningText != null)
          Text(
            widget.warningText!,
            style: AppStyles.small.copyWith(
              color: AppColors.third,
            ),
          ),
      ],
    );
  }
}
