import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_signup/src/features/core/model/dashboard_model/categories_model.dart';

import 'horizontal_sublist_widgets.dart';

class DashboardCategories extends StatelessWidget {
  const DashboardCategories({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashboardCategoriesModel.list;
    return SizedBox(
      height: 45,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,

        itemBuilder: (context,index)=> GestureDetector(
          onTap: list[index].onPress,
          child: HorizontalSubjectList(
            txtTheme: txtTheme,
            subjectTitle: list[index].heading,
            shortname: list[index].title,
            lessons: list[index].subheading,
          ),
        ),
      ),
    );
  }
}