import 'package:flutter/material.dart';

import '../../../../constands/image_strings.dart';
class DashboardTopCoursesModel{
  final String title;
  final String heading;
  final String subheading;
  final String image;
  final VoidCallback? onPress;

  DashboardTopCoursesModel(this.title, this.heading, this.subheading, this.onPress, this.image);

  static List<DashboardTopCoursesModel> list=[
    DashboardTopCoursesModel("Flutter Crash Course", "3 Sections", "Dart Languages", null,tBannerImage1),
    DashboardTopCoursesModel("HTML/CSS Crash Course", "2 Sections", "35 Lessons", null,tBannerImage1),
    DashboardTopCoursesModel("Material Design Course", "6 Sections", "Programming & Design", null,tBannerImage1),
  ];

}