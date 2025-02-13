import 'package:dalton_wade/utils/app_colors.dart';
import 'package:flutter/widgets.dart';

class AppStyles {
  static TextStyle h01 = TextStyle(
    fontFamily: "PlayfairDisplay",
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.italic,
    color: AppColors.textColor,
    fontSize: 42,
  );

  static TextStyle h02 = TextStyle(
    fontFamily: "PlayfairDisplay",
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.italic,
    color: AppColors.textColor,
    fontSize: 30,
  );

  static TextStyle h03 = TextStyle(
    fontFamily: "OpenSans",
    fontWeight: FontWeight.w700,
    color: AppColors.textColor,
    fontSize: 24,
  );

  static TextStyle body1 = TextStyle(
    fontFamily: "OpenSans",
    color: AppColors.textColor,
    fontSize: 16,
  );
  
  static TextStyle body1Bold = TextStyle(
    fontFamily: "OpenSans",
    fontWeight: FontWeight.w600,
    color: AppColors.textColor,
    fontSize: 16,
  );

  static TextStyle body2 = TextStyle(
    fontFamily: "OpenSans",
    color: AppColors.textColor,
    fontSize: 14,
  );

  static TextStyle body2Bold = TextStyle(
    fontFamily: "OpenSans",
    fontWeight: FontWeight.w600,
    color: AppColors.textColor,
    fontSize: 14,
  );

  static TextStyle small = TextStyle(
    fontFamily: "OpenSans",
    color: AppColors.textColor,
    fontSize: 12,
  );

  static TextStyle smallBold = TextStyle(
    fontFamily: "OpenSans",
    fontWeight: FontWeight.w600,
    color: AppColors.textColor,
    fontSize: 12,
  );
}
