import 'package:flutter/material.dart';
class DashboardCategoriesModel{
  final String title;
  final String heading;
  final String subheading;
  final VoidCallback? onPress;

  DashboardCategoriesModel(this.title, this.heading, this.subheading, this.onPress);

  static List<DashboardCategoriesModel> list=[
    DashboardCategoriesModel("JS", "Java Script", "10 Lessons", null),
    DashboardCategoriesModel("Py", "Python", "15 Lessons", null),
    DashboardCategoriesModel("C++", "C++", "18 Lessons", null),
    DashboardCategoriesModel("VS", "Visul Studio Code", "12 Lessons", null),
    DashboardCategoriesModel("F", "Flutter", "11 Lessons", null),
  ];

}