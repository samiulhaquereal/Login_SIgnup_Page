import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../constands/sizes.dart';
import '../../../../../constands/text_strings.dart';
import '../forget_password_mail/forget_password_mail_screen.dart';
import '../forget_password_phone/forget_password_phone_screen.dart';
import 'forget_password_btn_widget.dart';

class ForgetPassWordScreen{
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(context: context,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        builder: (context)=> Container(
          padding: EdgeInsets.all(tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tForgetPasswordTitle,style: Theme.of(context).textTheme.titleMedium,),
              SizedBox(height: 5),
              Text(tForgetPasswordSubTitle),
              SizedBox(height: 30),
              ForgetPasswordBtnWidget(
                onTap: (){
                  Navigator.pop(context);
                  Get.to(() => ForgetPasswordMailScreen());},
                btnIcon: Icons.mail_outline_rounded,
                title: tEmail,
                subTitle: tResetViaEmail,
              ),
              SizedBox(height: 20,),
              ForgetPasswordBtnWidget(
                onTap: (){
                  Navigator.pop(context);
                  Get.to(() => ForgetPasswordPhoneScreen());},
                btnIcon: Icons.mobile_friendly_outlined,
                title: tPhoneNo,
                subTitle: tResetViaPhone,
              ),
            ],
          ),
        )
    );
  }
}