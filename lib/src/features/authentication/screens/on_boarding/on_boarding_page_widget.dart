import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../constands/sizes.dart';
import '../../models/model_on_boarding.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(color: model.bgColor,
      child: Padding(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage(model.image),height: size.height * 0.4,),
            Column(
              children: [
                Text(model.title,style: Theme.of(context).textTheme.titleMedium,),
                SizedBox(height: 5),
                Text(model.subTitle,textAlign: TextAlign.center,),
              ],
            ),
            Text(model.counterText,style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}