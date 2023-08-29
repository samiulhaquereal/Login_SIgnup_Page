import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_signup/src/constands/sizes.dart';
import 'package:login_signup/src/constands/text_strings.dart';
import 'package:login_signup/src/features/authentication/controllers/otp_controller.dart';
import 'package:login_signup/src/features/core/screens/dashboard_screen/dashboard_screen.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var otpController = Get.put(OTPController());
    var otp;
    return SafeArea(child: Scaffold(
      body: Container(
        padding: EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(tOtpTitle,style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 70
            ),),
            Text(tOtpSubTitle.toUpperCase(),style: Theme.of(context).textTheme.titleSmall,),
            SizedBox(height: 40,),
            Text(tOtpMessage + "support@resoft.com.bd",textAlign: TextAlign.center,),
            SizedBox(height: 20,),
            OtpTextField(
              mainAxisAlignment: MainAxisAlignment.center,
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              keyboardType: TextInputType.number,
              onSubmit: (code){otp = code;
              otpController.verifyOTP(otp);
                },
            ),
            SizedBox(height: 20,),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  otpController.verifyOTP(otp);
                }, child: Text(tNext))),
          ],
        ),
      ),
    ));
  }
}
