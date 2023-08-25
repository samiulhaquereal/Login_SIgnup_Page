import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constands/colors.dart';
import '../../../../../constands/image_strings.dart';
import '../../../../../constands/sizes.dart';
import '../../../../../constands/text_strings.dart';

class DashboardBanners extends StatelessWidget {
  const DashboardBanners({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: tCardBgColor),
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(child: Icon(Icons.bookmark_rounded,color: Colors.grey,)),
                    Flexible(child: Container(width:70,height: 70,child: Image(image: AssetImage(tBannerImage2),),)),
                  ],
                ),
                SizedBox(height: 25,),
                Text(tDashboardBannerTitle1,style: GoogleFonts.mavenPro(
                    fontWeight: FontWeight.bold, fontSize: 18),maxLines: 2,overflow: TextOverflow.ellipsis,),
                Text(tDashboardBannerSubTitle,maxLines: 1,overflow: TextOverflow.ellipsis),
              ],
            ),
          ),
        ),
        SizedBox(width: tDashboardPadding,),
        Expanded(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: tCardBgColor),
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(child: Icon(Icons.bookmark_rounded,color: Colors.grey,)),
                        Flexible(child: Container(width:70,height: 70,child: Image(image: AssetImage(tBannerImage3),),)),
                      ],
                    ),
                    Text(tDashboardBannerTitle2,style: GoogleFonts.mavenPro(
                        fontWeight: FontWeight.bold, fontSize: 18),overflow: TextOverflow.ellipsis,),
                    Text(tDashboardBannerSubTitle,overflow: TextOverflow.ellipsis),
                  ],
                ),
              ),
              SizedBox(width:double.infinity,child: OutlinedButton(onPressed: (){},child: Text(tDashboardButton),)),
            ],
          ),


        ),
      ],
    );
  }
}