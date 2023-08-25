import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_signup/src/constands/image_strings.dart';
import 'package:login_signup/src/constands/sizes.dart';
import 'package:login_signup/src/constands/text_strings.dart';

import '../../../../../common_widgets/form/form_header_widget.dart';
import '../forget_password_otp/otp_screen.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              SizedBox(height: tDefaultSize*4),
              FormHeaderWidget(
                image: tForgetPasswordImage,
                title: tForgetPassword,
                subTitle: tForgetPasswordSubTitle,
                crossAxisAlignment: CrossAxisAlignment.center,
                heightBetween: 30,
                textAlign: TextAlign.center),
              SizedBox(height: tFormHeight),
              Form(child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text(tEmail),
                      hintText: tEmail,
                      prefixIcon: Icon(Icons.mail_outline_rounded)
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(onPressed: ()=>Get.to(OTPScreen()), child: Text(tNext)))
                ],
              ))
            ],
          ),
        ),
      ),
    ));
  }
}
