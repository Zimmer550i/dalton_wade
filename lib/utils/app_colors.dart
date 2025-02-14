// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';

class AppColors {
  static Color primary = const Color(0xff9BA566);
  static Color secondary = const Color(0xff7FA672);
  static Color third = const Color(0xff606A6E);
  static Color lightGrey = const Color(0xffCCCCCC);
  static Color dark = const Color(0xff191919);
  static Color link = const Color(0xff1B24FF);
  static Color primaryLight = const Color(0xffEBEDE0);
  static Color white = const Color(0xffffffff);
  static Color white2 = const Color(0xffF6F6F4);
  static Color white3 = const Color(0xfff8f8f8);
  static Color grey = const Color(0xff777777);
  static Color textColor = const Color(0xff101010);

  static List<BoxShadow> shadow = [BoxShadow(
    blurRadius: 15,
    spreadRadius: 0,
    color: Color.fromRGBO(16, 16, 26, 0.063),
    offset: const Offset(0, -4),
  )];
}
