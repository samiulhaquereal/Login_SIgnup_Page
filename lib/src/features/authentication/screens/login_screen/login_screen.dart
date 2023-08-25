import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_signup/src/common_widgets/form/form_footer_widget.dart';
import 'package:login_signup/src/constands/sizes.dart';
import '../../../../common_widgets/form/form_header_widget.dart';
import '../../../../constands/image_strings.dart';
import '../../../../constands/text_strings.dart';
import 'login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FormHeaderWidget(image: tOnBoardingImage2,title: tLoginTitle,subTitle: tLoginSubTitle,),
                LoginForm(),
                FormFooterWidget(normalText: tDontHaveAccount, RichText: tSign_Up)
              ],
            ),
          ),
        ),
      ),
    );
  }
}



