import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../constands/colors.dart';
import '../../../../../constands/sizes.dart';

class HorizontalCardListWidget extends StatelessWidget {
  const HorizontalCardListWidget({
    super.key, required this.CourseTitle, required this.BannerImage, required this.SectionTitle, required this.SectionSubTitle,
  });

  final String CourseTitle,BannerImage,SectionTitle,SectionSubTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      height: 200,
      child: Padding(
        padding: const EdgeInsets.only(right: 10,top: 5),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: tCardBgColor),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(child: Text(CourseTitle,style: GoogleFonts.mavenPro(fontSize: 18,fontWeight: FontWeight.bold),maxLines: 2,overflow: TextOverflow.ellipsis,)),
                  Flexible(child: Image(image: AssetImage(BannerImage),height: 100,))
                ],
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: (){}, child: Icon(Icons.play_arrow),
                    style:ElevatedButton.styleFrom(shape: CircleBorder()),
                  ),
                  SizedBox(width: tDashboardPadding,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(SectionTitle,style: GoogleFonts.mavenPro(fontSize: 17,fontWeight: FontWeight.bold),overflow:TextOverflow.ellipsis,),
                      Text(SectionSubTitle,style: GoogleFonts.mavenPro(fontSize: 17),overflow:TextOverflow.ellipsis,),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}