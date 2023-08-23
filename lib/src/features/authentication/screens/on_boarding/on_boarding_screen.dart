import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_signup/src/constands/colors.dart';
import 'package:login_signup/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'on_boarding_page_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final obcontroller = OnBoardingController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obcontroller.pages,
            liquidController: obcontroller.controller,
            onPageChangeCallback: obcontroller.onPageChangedCallBack,
            slideIconWidget: Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
              bottom: 60,
              child: OutlinedButton(
                onPressed: () => obcontroller.animateToNextSlide(),
                style: ElevatedButton.styleFrom(
                side: BorderSide(color: Colors.black26),
                shape: CircleBorder(),
                padding: EdgeInsets.all(20),
                onPrimary: Colors.white,
            ), child: Container(
                padding: EdgeInsets.all(20),
                child: Icon(Icons.arrow_forward_ios),
                decoration: BoxDecoration(color: tDarkColor,shape: BoxShape.circle),
              ),
          )),
          Positioned(
            top: 50,
              right: 20,
              child: TextButton(
            onPressed: () => obcontroller.skip() ,
          child: Text("Skip",style: TextStyle(color: Colors.grey),),)),
          Positioned(
              bottom: 10,
              child: AnimatedSmoothIndicator(
                activeIndex: obcontroller.controller.currentPage,
                count: 3,
                effect: WormEffect(
                  activeDotColor: Color(0xFF272727),
                  dotHeight: 5.0
                ),
              ))
        ],
      ),
    );
  }


}


