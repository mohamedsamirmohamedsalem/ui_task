import 'package:ui_task/CourseDesign/model/category.dart';

abstract class CourseDesign {
  onLoadCourseList(
      List<Category> categoryList, List<Category> categoryListPopular);

  onFailLoadCourseList() {}
}
