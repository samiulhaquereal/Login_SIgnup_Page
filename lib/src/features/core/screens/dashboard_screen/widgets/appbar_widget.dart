import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_signup/src/repository/authentication_repository/authentication_repository.dart';

import '../../../../../constands/colors.dart';
import '../../../../../constands/text_strings.dart';
import '../../profile_screens/profile_screen.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget{
  const DashboardAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(
        Icons.menu,
        color: Colors.black,
      ),
      title: Text(
        tAppName,
        style: GoogleFonts.montserrat(color: Colors.black),
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: EdgeInsets.only(right: 7, top: 7),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: tCardBgColor),
          child: IconButton(
            onPressed: () {
              //AuthenticationRepository.instance.logout();
              Get.to(ProfileScreen());
            },
            icon: Icon(
              Icons.person_outline_rounded,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(55);
}