import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constands/image_strings.dart';
import '../../../../constands/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: AssetImage(tOnBoardingImage2),height: size.height * 0.2,),
        Text(tLoginTitle,style: Theme.of(context).textTheme.titleMedium,textAlign: TextAlign.start,),
        SizedBox(height: 5,),
        Text(tLoginSubTitle),
      ],
    );
  }
}