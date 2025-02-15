import 'dart:async';

import 'package:dalton_wade/helpers/route.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        precacheImage(AssetImage('assets/images/bg.jpg'), context);
        precacheImage(AssetImage('assets/images/card_image.png'), context);
        precacheImage(AssetImage('assets/images/user.png'), context);
        precacheImage(AssetImage('assets/images/logo_white.png'), context);
        
        Timer(const Duration(seconds: 1), () {
          Get.offAllNamed(AppRoutes.login);
        });
      },
    );
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo_colored.png",
              width: 999,
              fit: BoxFit.fitWidth,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "www.DaltoWade.com",
              style: AppStyles.h05,
            ),
            Text(
              "www.JoinDaltoWade.com",
              style: AppStyles.h05,
            ),
          ],
        ),
      ),
    );
  }
}
