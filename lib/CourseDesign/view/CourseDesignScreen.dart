import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_task/CourseDesign/model/category.dart';
import 'package:ui_task/CourseDesign/presenter/presenter.dart';
import 'package:ui_task/CourseDesign/view/CourseDesign.dart';
import 'package:ui_task/Widget/CategoryView.dart';
import 'package:ui_task/Widget/HomeHeaderView.dart';
import 'package:ui_task/Widget/SearcharBar.dart';
import 'package:ui_task/Widget/buildDesationCollection.dart';
import 'package:ui_task/Widget/buildPopularCourse.dart';
import 'package:ui_task/resources/Dimens.dart';
import 'package:ui_task/resources/colors.dart';
import 'package:ui_task/resources/constants.dart';

class CourseDesignScreen extends StatefulWidget {
  @override
  _CourseDesignScreenState createState() => _CourseDesignScreenState();
}

class _CourseDesignScreenState extends State<CourseDesignScreen>
    implements CourseDesign {
  int CategoryIndex = 0;
  CourseDesignPresenter _presentor;
  List<Category> categoryList;
  List<Category> categoryListPopular;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _presentor = new CourseDesignPresenter();
    _presentor.attachView(this);
    _presentor.fetchData();
  }

  @override
  onFailLoadCourseList() {
    // TODO: implement onFailLoadCourseList
    setState(() {
      categoryListPopular = [];
      categoryList = [];
    });
  }

  @override
  onLoadCourseList(
      List<Category> categoryList, List<Category> categoryListPopular) {
    // TODO: implement onLoadCourseList
    setState(() {
      this.categoryList = categoryList;
      this.categoryListPopular = categoryListPopular;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Constant.lightTheme,
      home: Scaffold(
        body: Container(
            color: WHITE,
            child: ListView(
              children: <Widget>[
                HomeHeaderView(context),
                SizedBox(
                  height: DIMEN_8,
                ),
                SearcharBar(context),
                SizedBox(
                  height: DIMEN_8,
                ),
                CategoryView(context, onCategoryListClick, CategoryIndex),
                SizedBox(
                  height: DIMEN_8,
                ),
                buildDesationCollection(context, categoryList),
                SizedBox(
                  height: DIMEN_8,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      top: DIMEN_8,
                      left: DIMEN_16,
                      right: DIMEN_16,
                      bottom: DIMEN_24),
                  child: Text(
                    "Popular Course",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: DARK_BLACK,
                        fontWeight: FontWeight.w700,
                        fontSize: DIMEN_21),
                  ),
                ),
                SizedBox(
                  height: DIMEN_8,
                ),
                buildPopularCourse(context, categoryListPopular),
                SizedBox(
                  height: DIMEN_8,
                ),
              ],
            )),
      ),
    );
  }

  onCategoryListClick(int index) {
    CategoryIndex = index;
    setState(() {});
  }
}
