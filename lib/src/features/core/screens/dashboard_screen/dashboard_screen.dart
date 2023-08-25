import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_signup/src/constands/colors.dart';
import 'package:login_signup/src/constands/sizes.dart';
import 'package:login_signup/src/constands/text_strings.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final  txtTheme = Theme.of(context).textTheme;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu,color: Colors.black,),
        title: Text(tAppName,style: GoogleFonts.montserrat(color: Colors.black),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 7,top: 7),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: tCardBgColor),
            child: IconButton(onPressed: (){},icon: Icon(Icons.person_outline_rounded,color: Colors.black,),),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(tDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tDashboardTitle,style: GoogleFonts.alef(fontWeight: FontWeight.bold)),
              Text(tDashboardHeading,style: GoogleFonts.alef(fontSize: 25,fontWeight: FontWeight.bold)),
              SizedBox(height: tDashboardPadding,),
              Container(
                decoration: BoxDecoration(
                  border: Border(left: BorderSide(width: 4))
                ),
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(tDashboardSearch,style: txtTheme.titleLarge?.apply(color: Colors.grey.withOpacity(0.5))),
                    Icon(Icons.mic,size: 25,),
                  ],
                ),
              ),
              SizedBox(height: tDashboardPadding,)
            ],
          ),
          
        ),
      ),
    ));
  }
}
