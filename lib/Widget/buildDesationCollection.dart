import 'package:flutter/cupertino.dart';
import 'package:ui_task/CourseDesign/model/category.dart';
import 'package:ui_task/Widget/category_collection_view.dart';

Widget buildDesationCollection(
    BuildContext context, List<Category> categoryList) {
  return Container(
    height: MediaQuery.of(context).size.height / 4.5,
    width: MediaQuery.of(context).size.width,
    child: ListView.builder(
      primary: false,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: categoryList.length,
      itemBuilder: (BuildContext context, int index) {
        Category cat = categoryList[index];
        return CategoryItem(
          cat: cat,
        );
      },
    ),
  );
}
