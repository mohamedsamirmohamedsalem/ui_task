import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_task/CourseDesign/model/category.dart';
import 'package:ui_task/resources/Dimens.dart';
import 'package:ui_task/resources/colors.dart';
import 'package:ui_task/resources/constants.dart';
import 'package:ui_task/resources/strings.dart';
import 'package:ui_task/resources/styles.dart';

import 'Widget/category_collection_view.dart';
import 'Widget/popular_course_view.dart';

// ignore: must_be_immutable
class CourseDesignScreen extends StatelessWidget {
  int categoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Constant.lightTheme,
      home: Scaffold(
        body: Container(
            color: WHITE,
            child: ListView(
              children: <Widget>[
                homeHeaderView(context),
                SizedBox(height: DIMEN_8),
                searchBar(context),
                SizedBox(height: DIMEN_8),
                categoryView(context, onCategoryListClick, categoryIndex),
                SizedBox(height: DIMEN_8),
                buildDestinationCollection(context),
                SizedBox(height: DIMEN_8),
                Container(
                    padding: const EdgeInsets.only(
                        top: DIMEN_8,
                        left: DIMEN_16,
                        right: DIMEN_16,
                        bottom: DIMEN_24),
                    child: Text(
                      popularCourse,
                      style: kBlackTextStyle700,
                    )),
                SizedBox(height: DIMEN_8),
                buildPopularCourse(context),
                SizedBox(height: DIMEN_8),
              ],
            )),
      ),
    );
  }

  onCategoryListClick(int index) {
    categoryIndex = index;
    // setState(() {});
  }

  Widget homeHeaderView(context) {
    return Container(
        padding: const EdgeInsets.only(
            top: DIMEN_32, left: DIMEN_16, right: DIMEN_16, bottom: DIMEN_16),
        width: MediaQuery.of(context).size.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    chooseYour,
                    style: kBlackTextStyle400,
                  ),
                  buildSingleText(
                    text: designCourse,
                    style: kBlackTextStyle700,
                  ),
                ],
              ),
            ),
            Container(
              width: DIMEN_35,
              height: DIMEN_35,
              child: Image.asset("assets/userImage.png"),
            ),
          ],
        ));
  }

  Text buildSingleText({String text, TextStyle style}) {
    return Text(
      text,
      style: style,
    );
  }

  Widget searchBar(context) {
    return Container(
      height: DIMEN_45,
      width: MediaQuery.of(context).size.width * 0.7,
      alignment: Alignment.centerRight,
      margin: const EdgeInsets.symmetric(horizontal: DIMEN_16, vertical: 10),
      decoration: BoxDecoration(
        color: GRAY_FILL,
        borderRadius: BorderRadius.all(Radius.circular(DIMEN_15)),
      ),
      child: TextField(
        style: TextStyle(fontSize: DIMEN_16, color: Colors.black),
        cursorColor: GREY,
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: GREY,
              size: DIMEN_16,
            ),
            hintText: search,
            hintStyle: TextStyle(fontSize: DIMEN_14, color: GREY)),
      ),
    );
  }

  Widget categoryView(
      context, Function onCategoryListClick, int categoryIndex) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(
              top: DIMEN_8, left: DIMEN_16, right: DIMEN_16, bottom: DIMEN_24),
          child: Text(
            category,
            style: kBlackTextStyle700,
          ),
        ),
        Container(
          height: DIMEN_40,
          child: ListView.builder(
            primary: false,
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              List<String> name = ["Ui/Ux", "Coding", "Basic UI"];
              return GestureDetector(
                  onTap: () {
                    onCategoryListClick(index);
                  },
                  child: Container(
                      margin: EdgeInsets.only(right: DIMEN_14, left: DIMEN_14),
                      width: MediaQuery.of(context).size.width * 0.25,
                      decoration: BoxDecoration(
                        border: Border.all(color: LIGHT_BLUE),
                        borderRadius: BorderRadius.circular(DIMEN_30),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(DIMEN_30),
                        child: Material(
                          color: categoryIndex != index
                              ? WHITE
                              : LIGHT_BLUE, // button color
                          child: SizedBox(
                            child: Center(
                              child: Text(
                                name[index],
                                style: TextStyle(
                                    color: categoryIndex != index
                                        ? LIGHT_BLUE
                                        : WHITE),
                              ),
                            ),
                          ),
                        ),
                      )));
            },
          ),
        )
      ],
    );
  }

  buildDestinationCollection(BuildContext context) {
    List<Category> categoryList = Category.categoryList;
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

  Widget buildPopularCourse(BuildContext context) {
    List<Category> categoryList = Category.popularCourseList;
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
}
