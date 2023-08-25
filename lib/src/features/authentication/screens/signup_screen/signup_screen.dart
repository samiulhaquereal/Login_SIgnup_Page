import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_signup/src/constands/image_strings.dart';
import 'package:login_signup/src/constands/sizes.dart';
import 'package:login_signup/src/constands/text_strings.dart';
import 'package:login_signup/src/features/authentication/screens/signup_screen/signup_form_widget.dart';

import '../../../../common_widgets/form/form_footer_widget.dart';
import '../../../../common_widgets/form/form_header_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormHeaderWidget(
                image: tOnBoardingImage1,
                title: tSignUpTitle,
                subTitle: tSignUpSubTitle,
              ),
              SignUpForm(),
              FormFooterWidget(normalText: tAlreadyHaveAccount, RichText: tLogin)
            ],
          ),
        ),
      ),
    ));
  }
}


