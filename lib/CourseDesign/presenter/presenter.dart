import 'package:ui_task/Base/BasePresenter.dart';
import 'package:ui_task/CourseDesign/model/category.dart';
import 'package:ui_task/CourseDesign/view/CourseDesign.dart';

class CourseDesignPresenter extends BasePresentor<CourseDesign> {
  Future fetchData() {
    getView()
        .onLoadCourseList(Category.categoryList, Category.popularCourseList);
  }
}
