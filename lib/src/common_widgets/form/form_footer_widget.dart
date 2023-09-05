import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_signup/src/features/core/screens/dashboard_screen/dashboard_screen.dart';

import '../../constands/colors.dart';
import '../../constands/image_strings.dart';
import '../../constands/sizes.dart';
import '../../constands/text_strings.dart';
import '../../features/core/screens/profile_screens/profile_screen.dart';

class FormFooterWidget extends StatelessWidget {
  const FormFooterWidget({super.key, required this.normalText, required this.RichText});

  final String normalText,RichText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        SizedBox(height: tFormHeight - 20),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {
              Get.to(DashboardScreen());
            },
            icon: Image(
              image: AssetImage(tGoogleLogoImage),
              width: 20,
            ),
            label: Text(tSignInWithGoogle.toUpperCase()),
          ),
        ),
        SizedBox(height: tFormHeight - 20),
        TextButton(onPressed: (){
        }, child: Text.rich(TextSpan(text: normalText,style: TextStyle(color: tSecondaryColor),
            children: [
              TextSpan(text: RichText,style: TextStyle(color: Colors.deepPurple))
            ])))
      ],
    );
  }
}
