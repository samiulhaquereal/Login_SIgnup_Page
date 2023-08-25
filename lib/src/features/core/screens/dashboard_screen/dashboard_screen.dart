import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_signup/src/constands/colors.dart';
import 'package:login_signup/src/constands/sizes.dart';
import 'package:login_signup/src/constands/text_strings.dart';
import 'package:login_signup/src/features/core/screens/dashboard_screen/widgets/appbar_widget.dart';
import 'package:login_signup/src/features/core/screens/dashboard_screen/widgets/dashboard_banners_widget.dart';
import 'package:login_signup/src/features/core/screens/dashboard_screen/widgets/dashboard_categories_widget.dart';
import 'package:login_signup/src/features/core/screens/dashboard_screen/widgets/dashboard_search_widget.dart';
import 'package:login_signup/src/features/core/screens/dashboard_screen/widgets/dashboard_topcourses_widget.dart';
import 'package:login_signup/src/features/core/screens/dashboard_screen/widgets/horizontal_cardlist_widget.dart';
import 'package:login_signup/src/features/core/screens/dashboard_screen/widgets/horizontal_sublist_widgets.dart';

import '../../../../constands/image_strings.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return SafeArea(
        child: Scaffold(
      appBar: DashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(tDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tDashboardTitle,
                  style: GoogleFonts.alef(fontWeight: FontWeight.bold)),
              Text(tDashboardHeading,
                  style: GoogleFonts.alef(
                      fontSize: 25, fontWeight: FontWeight.bold)),
              SizedBox(
                height: tDashboardPadding,
              ),

              DashboardSearchWidget(txtTheme: txtTheme),
              SizedBox(height: tDashboardPadding),

              DashboardCategories(txtTheme: txtTheme),
              SizedBox(height: tDashboardPadding),

              DashboardBanners(),
              SizedBox(height: tDashboardPadding,),

              Text(tDashboardTopCourses,style: GoogleFonts.mavenPro(fontSize: 20,fontWeight: FontWeight.bold)),
              SizedBox(height: 10,),

              DashboardTopCoursesWidget(),
            ],
          ),
        ),
      ),
    ));
  }
}











