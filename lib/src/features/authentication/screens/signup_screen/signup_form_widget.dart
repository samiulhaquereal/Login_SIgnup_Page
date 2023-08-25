import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constands/sizes.dart';
import '../../../../constands/text_strings.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: tFormHeight-10),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  label: Text(tFullName),
                  prefixIcon: Icon(Icons.person_outline_rounded)
              ),
            ),
            SizedBox(height: tFormHeight-20),
            TextFormField(
              decoration: InputDecoration(
                  label: Text(tEmail),
                  prefixIcon: Icon(Icons.email_outlined)
              ),
            ),
            SizedBox(height: tFormHeight-20),
            TextFormField(
              decoration: InputDecoration(
                  label: Text(tPhoneNo),
                  prefixIcon: Icon(Icons.phone)
              ),
            ),
            SizedBox(height: tFormHeight-20),
            TextFormField(
              decoration: InputDecoration(
                  label: Text(tPassword),
                  prefixIcon: Icon(Icons.password_outlined)
              ),
            ),
            SizedBox(height: tFormHeight-10),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){}, child: Text(tSign_Up.toUpperCase())))
          ],
        ),
      ),
    );
  }
}