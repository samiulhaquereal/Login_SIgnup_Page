import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_signup/src/constands/colors.dart';
import 'package:login_signup/src/constands/image_strings.dart';
import 'package:login_signup/src/constands/text_strings.dart';
import 'package:login_signup/src/features/authentication/controllers/splash_screen_controller.dart';

import '../../../../constands/sizes.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final splashcontroller = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashcontroller.startAnimation();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Obx(() => AnimatedPositioned(
                top: splashcontroller.animate.value ? MediaQuery.of(context).size.width / 5 : -30,
                left: splashcontroller.animate.value ? MediaQuery.of(context).size.width / 3 : -30,
                width: 150,
                height: 150,
                duration: Duration(milliseconds: 1600),
                child: Image(image: AssetImage(tSplashImage)),
              )),
            Obx(() => AnimatedPositioned(
                duration: Duration(milliseconds: 1600),
                top: MediaQuery.of(context).size.width / 1.5,
                left: splashcontroller.animate.value ? MediaQuery.of(context).size.width / 4 : -80,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 1600),
                  opacity: splashcontroller.animate.value ? 1 : 0,
                  child: Column(
                    children: [
                      Text(tAppName, style: Theme.of(context).textTheme.headlineSmall),
                      Text(tAppTagLine, style: Theme.of(context).textTheme.titleSmall),
                    ],
                  ),
                ),
              )),
            Obx(() => AnimatedPositioned(
                duration: Duration(milliseconds: 1600),
                bottom: splashcontroller.animate.value ? MediaQuery.of(context).size.width / 6 : -80,
                left: MediaQuery.of(context).size.width / 9,
                child: Image(image: AssetImage(tSplashBottomIcon)),
              )),
            Obx(() =>AnimatedPositioned(
                duration: Duration(milliseconds: 1600),
                bottom:  40,
                right: splashcontroller.animate.value ? tDefaultSize : -30,
                child: Container(
                  width: tSplashContainerSize,
                  height: tSplashContainerSize,
                  decoration: BoxDecoration(
                    color: tPrimaryColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              )),
          ],
        ),
      ),
    );
  }
}
