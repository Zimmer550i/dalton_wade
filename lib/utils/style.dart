import 'package:dalton_wade/utils/app_colors.dart';
import 'package:flutter/widgets.dart';

class AppStyles {
  static TextStyle h01 = TextStyle(
    fontFamily: "PlayfairDisplay",
    fontVariations: [FontVariation("wght", 700)],
    fontStyle: FontStyle.italic,
    color: AppColors.textColor,
    fontSize: 42,
  );

  static TextStyle h02 = TextStyle(
    fontFamily: "PlayfairDisplay",
    fontVariations: [FontVariation("wght", 700)],
    fontStyle: FontStyle.italic,
    color: AppColors.textColor,
    fontSize: 30,
  );

  static TextStyle h03 = TextStyle(
    fontFamily: "OpenSans",
    fontVariations: [FontVariation("wght", 700)],
    color: AppColors.textColor,
    fontSize: 24,
  );

  static TextStyle h05 = TextStyle(
    fontFamily: "OpenSans",
    fontVariations: [FontVariation("wght", 600)],
    color: AppColors.dark,
    fontSize: 20,
  );

  static TextStyle h06 = TextStyle(
    fontFamily: "OpenSans",
    fontVariations: [FontVariation("wght", 600)],
    color: AppColors.dark,
    fontSize: 18,
  );

  static TextStyle h07 = TextStyle(
    fontFamily: "PlayfairDisplay",
    fontVariations: [FontVariation("wght", 700)],
    fontStyle: FontStyle.italic,
    fontSize: 24,
  );
  // static TextStyle h07 = h02.copyWith(fontSize: 24);

  static TextStyle body1 = TextStyle(
    fontFamily: "OpenSans",
    color: AppColors.textColor,
    fontSize: 16,
  );

  static TextStyle body1Bold = TextStyle(
    fontFamily: "OpenSans",
    fontVariations: [FontVariation("wght", 600)],
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
    fontVariations: [FontVariation("wght", 600)],
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
    fontVariations: [FontVariation("wght", 600)],
    color: AppColors.textColor,
    fontSize: 12,
  );
}
