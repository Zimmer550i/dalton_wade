import 'package:dalton_wade/views/screens/auth/forget_password.dart';
import 'package:dalton_wade/views/screens/auth/login.dart';
import 'package:dalton_wade/views/screens/splash.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String splash = "/splash";
  static String login = '/login';
  static String forgetPassword = '/forget_password';

  static List<GetPage> page = [
    GetPage(name: splash, page: () => Splash()),
    GetPage(name: login, page: () => Login()),
    GetPage(name: forgetPassword, page: () => ForgetPassword()),
  ];
}
