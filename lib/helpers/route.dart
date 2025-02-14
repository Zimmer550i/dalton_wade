import 'package:dalton_wade/views/screens/app.dart';
import 'package:dalton_wade/views/screens/auth/forget_password.dart';
import 'package:dalton_wade/views/screens/auth/login.dart';
import 'package:dalton_wade/views/screens/splash.dart';
import 'package:get/get.dart';

class AppRoutes {
  // Splash
  static String splash = "/splash";

  // Auth
  static String login = '/login';
  static String forgetPassword = '/forget_password';

  // App
  static String app = '/app';

  static List<GetPage> page = [
    GetPage(name: splash, page: () => Splash()),
    
    GetPage(name: login, page: () => Login()),
    GetPage(name: forgetPassword, page: () => ForgetPassword()),

    GetPage(name: app, page: () => App()),
  ];
}
