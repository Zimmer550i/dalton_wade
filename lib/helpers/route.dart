import 'package:dalton_wade/models/box_icon_data.dart';
import 'package:dalton_wade/utils/app_icons.dart';
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
import 'package:dalton_wade/views/screens/settings/change_password.dart';
import 'package:dalton_wade/views/screens/settings/feedback.dart';
import 'package:dalton_wade/views/screens/splash.dart';
import 'package:dalton_wade/views/screens/tools/support.dart';
import 'package:dalton_wade/views/screens/tools/template_page.dart';
import 'package:dalton_wade/views/screens/tools/training_sessions.dart';
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

  static String trainingSessions = "/training_sessions";
  static String support = '/support';
  static String turnerTitle = '/turnerTitle';
  static String pioneerMortgage = '/pioneer_mortgage';
  static String miMitualMortgage = '/mi_mutual_mortgage';

  static String notifications = '/notifications';

  static String changePassword = '/change_password';
  static String feedback = '/feedback';

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
    GetPage(
      name: changePassword,
      page: () => ChangePassword(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: feedback,
      page: () => Feedback(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(name: notifications, page: () => Notifications()),
    GetPage(name: trainingSessions, page: () => TrainingSessions()),
    GetPage(name: favouriteTrainings, page: () => FavouriteTrainings()),
    GetPage(name: forgetPassword, page: () => ForgetPassword()),
    GetPage(name: support, page: () => Support()),
    GetPage(
      name: turnerTitle,
      page: () => TemplatePage(
        title: "Turner Title",
        subTitle:
            "Explore the convenience of Turner Title, our in-house title company catering to the entire state of Florida. Enjoy exclusive features like the Turner Title Prospector for farming, Zoccam for mobile deposits on the fly, Qualia - our cloud-based title, escrow, and closing software, and our Sellers Net Sheet Calculator for accurate estimates, Proudly bringing you the best in title services at Dalton Wade.",
        additionalButtons: [
          BoxIconData(
            assetPath: AppIcons.call,
            label: "Call",
          ),
          BoxIconData(
            assetPath: AppIcons.email,
            label: "Email",
          ),
          BoxIconData(
            assetPath: AppIcons.website,
            label: "Visit Website",
          ),
          BoxIconData(
            assetPath: AppIcons.downloadApp,
            label: "Download turner Title Prospector",
          ),
        ],
      ),
    ),
    GetPage(
      name: pioneerMortgage,
      page: () => TemplatePage(
        title: "Pioneer Mortgage Funding Inc.",
        subTitle:
            "Pionner Mortgage Funding Inc., our trusted lending partner, is ready to assist your clients in financing their dream home. Contact Courtland Hunt to begin the process effortlessly.",
        additionalButtons: [
          BoxIconData(
            assetPath: AppIcons.call,
            label: "Call",
          ),
          BoxIconData(
            assetPath: AppIcons.email,
            label: "Email",
          ),
          BoxIconData(
            assetPath: AppIcons.website,
            label: "Visit Website",
          ),
        ],
      ),
    ),
    GetPage(
      name: miMitualMortgage,
      page: () => TemplatePage(
        title: "MiMutual Mortgage",
        subTitle:
            "Pionner Mortgage Funding Inc., our trusted lending partner, is ready to assist your clients in financing their dream home. Contact Courtland Hunt to begin the process effortlessly.",
        additionalButtons: [
          BoxIconData(
            assetPath: AppIcons.call,
            label: "Call",
          ),
          BoxIconData(
            assetPath: AppIcons.email,
            label: "Email",
          ),
          BoxIconData(
            assetPath: AppIcons.website,
            label: "Visit Website",
          ),
        ],
      ),
    ),
  ];
}
