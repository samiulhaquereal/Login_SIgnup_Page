import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_signup/src/constands/colors.dart';
import 'package:login_signup/src/constands/image_strings.dart';
import 'package:login_signup/src/constands/sizes.dart';

import '../../../../constands/text_strings.dart';
import '../login_screen/login_screen.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return SafeArea(
      child: Scaffold(
        backgroundColor: isDarkMode ? tSecondaryColor : tWhiteColor,
          body: Padding(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage(tOnBoardingImage1),
              height: height * 0.6,
            ),
            Column(
              children: [
                Text(
                  tOnBoardingTitle1,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  tOnBoardingSubTitle1,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: OutlinedButton(
                        onPressed: () => Get.to(LoginScreen()),
                        child: Text(tLogin.toUpperCase()))),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text(tSign_Up.toUpperCase()))),
              ],
            )
          ],
        ),
      )),
    );
  }
}
