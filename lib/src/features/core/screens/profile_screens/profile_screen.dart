import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:login_signup/src/constands/colors.dart';
import 'package:login_signup/src/constands/sizes.dart';
import 'package:login_signup/src/constands/text_strings.dart';
import 'package:login_signup/src/features/core/screens/profile_screens/update_profile_screen.dart';
import 'package:login_signup/src/features/core/screens/profile_screens/widgets/profile_menu_widget.dart';

import '../../../../constands/image_strings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: Icon(
            LineAwesomeIcons.angle_left,color: Colors.black,
          ),
        ),
        title: Text(tProfile,style: GoogleFonts.montserrat(color: Colors.black),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon,color: Colors.black,))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(borderRadius:BorderRadius.circular(100),child: Image(image: AssetImage(tProfileImage),)),
              ),
              SizedBox(height: 10,),
              Text(tProfileHeading,style: GoogleFonts.mavenPro(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
              Text(tProfileSubHeading,style: GoogleFonts.mavenPro(color: Colors.black,fontSize: 15),),
              SizedBox(height: 20,),
              SizedBox(
                  width: 200,
                  child: ElevatedButton(onPressed: (){
                    Get.to(UpdateProfileScreen());
                  }, child: Text(tEditProfile),style: ElevatedButton.styleFrom(
                    backgroundColor: tPrimaryColor,side: BorderSide.none,shape: StadiumBorder()
                  ),)),
              SizedBox(height: 30,),
              Divider(),
              SizedBox(height: 30,),

              ProfileMenuWidget(title: 'Settings', icon: LineAwesomeIcons.cog, onPress: () {},),
              ProfileMenuWidget(title: 'Billing Details', icon: LineAwesomeIcons.wallet, onPress: () {},),
              ProfileMenuWidget(title: 'User Management', icon: LineAwesomeIcons.user_check, onPress: () {},),
              Divider(),
              SizedBox(height: 10,),
              ProfileMenuWidget(title: 'Information', icon: LineAwesomeIcons.info, onPress: () {},),
              ProfileMenuWidget(title: 'Logout',
                icon: LineAwesomeIcons.alternate_sign_out,
                textColor: Colors.red,
                endIcon: false,
                onPress: () {},),
            ],
          ),
        ),
      ),
    ));
  }
}

