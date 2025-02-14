import 'package:dalton_wade/views/base/custom_bottom_nav_bar.dart';
import 'package:dalton_wade/views/screens/home/home.dart';
import 'package:dalton_wade/views/screens/profile/profile.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int index = 2;
  PageController controller = PageController(initialPage: 2);
  List<Widget> pages = [];

  @override
  void initState() {
    super.initState();
    pages = [
      Profile(),
      FlutterLogo(),
      Home(changeIndex: changeIndex),
      FlutterLogo(),
      FlutterLogo(),
    ];
  }

  void changeIndex(int val) {
    controller.animateToPage(
      val,
      duration: const Duration(milliseconds: 300),
      curve: Curves.decelerate,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          onPageChanged: (value) {
            setState(() {
              index = value;
            });
          },
          controller: controller,
          children: pages,
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        index: index,
        onChange: (p0) {
          controller.animateToPage(
            p0,
            duration: const Duration(milliseconds: 300),
            curve: Curves.decelerate,
          );
        },
      ),
    );
  }
}
