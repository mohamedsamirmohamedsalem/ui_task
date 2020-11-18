import 'package:flutter/cupertino.dart';
import 'package:ui_task/CourseDesign/model/category.dart';
import 'package:ui_task/CourseDesign/view/Widget/popular_course_view.dart';
import 'package:ui_task/Widget/popular_course_view.dart';

Widget buildPopularCourse(BuildContext context, List<Category> categoryList) {
  return Container(
    child: GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: categoryList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        return PopularCourse(
          cat: categoryList[index],
        );
      },
    ),
  );
}
