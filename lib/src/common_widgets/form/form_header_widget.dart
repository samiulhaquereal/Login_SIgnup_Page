import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({super.key, required this.image, required this.title, required this.subTitle});

  final String image,title,subTitle;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: AssetImage(image),height: size.height * 0.2),
        Text(title,style: Theme.of(context).textTheme.titleMedium,textAlign: TextAlign.start,),
        SizedBox(height: 5,),
        Text(subTitle),
      ],
    );
  }
}
