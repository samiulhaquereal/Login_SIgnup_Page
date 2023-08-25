import 'package:flutter/cupertino.dart';
import '../../../model/dashboard_model/topcourses_model.dart';
import 'horizontal_cardlist_widget.dart';

class DashboardTopCoursesWidget extends StatelessWidget {
  const DashboardTopCoursesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final list = DashboardTopCoursesModel.list;
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemBuilder: (context,index)=>GestureDetector(
          onTap: list[index].onPress,
          child: HorizontalCardListWidget(
            CourseTitle: list[index].title,
            BannerImage: list[index].image,
            SectionTitle: list[index].heading,
            SectionSubTitle: list[index].subheading,
          ),
        ),
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}