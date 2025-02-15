import 'package:dalton_wade/views/screens/app.dart';
import 'package:dalton_wade/views/screens/auth/forget_password.dart';
import 'package:dalton_wade/views/screens/auth/login.dart';
import 'package:dalton_wade/views/screens/home/notifications.dart';
import 'package:dalton_wade/views/screens/profile/checkout.dart';
import 'package:dalton_wade/views/screens/profile/confirmation.dart';
import 'package:dalton_wade/views/screens/profile/edit_profile.dart';
import 'package:dalton_wade/views/screens/profile/favourite_trainings.dart';
import 'package:dalton_wade/views/screens/profile/my_plan.dart';
import 'package:dalton_wade/views/screens/profile/upgrade_plan.dart';
import 'package:dalton_wade/views/screens/splash.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String splash = "/splash";
  static String login = '/login';
  static String forgetPassword = '/forget_password';
  static String app = '/app';

  static String editProfile = '/edit_profile';
  static String upgradePlan = '/upgrade_plan';
  static String checkout = '/checkout';
  static String confirmation = '/confirmation';
  static String myPlan = '/my_plan';
  static String favouriteTrainings = "/favourite_trainings";

  static String notifications = '/notifications';

  static List<GetPage> page = [
    GetPage(name: app, page: () => App()),
    GetPage(name: login, page: () => Login()),
    GetPage(name: splash, page: () => Splash()),
    GetPage(name: myPlan, page: () => MyPlan()),
    GetPage(
      name: checkout,
      page: () => Checkout(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: upgradePlan,
      page: () => UpgradePlan(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(name: editProfile, page: () => EditProfile()),
    GetPage(
      name: confirmation,
      page: () => Confirmation(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(name: notifications, page: () => Notifications()),
    GetPage(name: favouriteTrainings, page: () => FavouriteTrainings()),
    GetPage(name: forgetPassword, page: () => ForgetPassword()),
  ];
}
