import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../constands/sizes.dart';
import '../../../../constands/text_strings.dart';
import '../../controllers/signup_controller.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();
    return Container(
      padding: EdgeInsets.symmetric(vertical: tFormHeight-10),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
              decoration: InputDecoration(
                  label: Text(tFullName),
                  prefixIcon: Icon(Icons.person_outline_rounded)
              ),
            ),
            SizedBox(height: tFormHeight-20),
            TextFormField(
              controller: controller.email,
              decoration: InputDecoration(
                  label: Text(tEmail),
                  prefixIcon: Icon(Icons.email_outlined)
              ),
            ),
            SizedBox(height: tFormHeight-20),
            TextFormField(
              controller: controller.phoneNo,
              decoration: InputDecoration(
                  label: Text(tPhoneNo),
                  prefixIcon: Icon(Icons.phone)
              ),
            ),
            SizedBox(height: tFormHeight-20),
            TextFormField(
              controller: controller.password,
              decoration: InputDecoration(
                  label: Text(tPassword),
                  prefixIcon: Icon(Icons.password_outlined)
              ),
            ),
            SizedBox(height: tFormHeight-10),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  if(_formKey.currentState!.validate()){
                    SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
                  }
                }, child: Text(tSign_Up.toUpperCase())))
          ],
        ),
      ),
    );
  }
}