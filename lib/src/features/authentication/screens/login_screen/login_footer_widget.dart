import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constands/colors.dart';
import '../../../../constands/image_strings.dart';
import '../../../../constands/sizes.dart';
import '../../../../constands/text_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

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
            onPressed: () {},
            icon: Image(
              image: AssetImage(tGoogleLogoImage),
              width: 20,
            ),
            label: Text(tSignInWithGoogle),
          ),
        ),
        SizedBox(height: tFormHeight - 20),
        TextButton(onPressed: (){}, child: Text.rich(TextSpan(text: tDontHaveAccount,style: TextStyle(color: tSecondaryColor),children: [
          TextSpan(text: tSign_Up,style: TextStyle(color: Colors.deepPurple))
        ])))
      ],
    );
  }
}