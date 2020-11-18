import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_task/CourseDesign/model/category.dart';
<<<<<<< HEAD
import 'package:ui_task/Utilty/widget_animator.dart';
import 'package:ui_task/Widget/category_collection_view.dart';
import 'package:ui_task/Widget/popular_course_view.dart';
=======
import 'package:ui_task/CourseDesign/presenter/presenter.dart';
import 'package:ui_task/CourseDesign/view/CourseDesign.dart';
import 'package:ui_task/Widget/CategoryView.dart';
import 'package:ui_task/Widget/HomeHeaderView.dart';
import 'package:ui_task/Widget/SearcharBar.dart';
import 'package:ui_task/Widget/buildDesationCollection.dart';
import 'package:ui_task/Widget/buildPopularCourse.dart';
>>>>>>> develop
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

<<<<<<< HEAD
Widget SearcharBar(context) {
  return Container(
    height: 45,
    width: MediaQuery.of(context).size.width * 0.7,
    alignment: Alignment.centerRight,
    margin: const EdgeInsets.symmetric(horizontal: DIMEN_16, vertical: 10),
    decoration: BoxDecoration(
      color: Color(0xFFE0E0E0),
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
    child: TextField(
      style: TextStyle(fontSize: 16, color: Colors.black),
      cursorColor: Colors.grey,
      decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
            size: 16,
          ),
          hintText: "Search...",
          hintStyle: TextStyle(fontSize: 14, color: Colors.grey)),
    ),
  );
}

Widget CategoryView(context, Function onCategoryListClick, int CategoryIndex) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        padding: const EdgeInsets.only(
            top: DIMEN_8, left: DIMEN_16, right: DIMEN_16, bottom: DIMEN_24),
        child: Text(
          "Category",
          style: TextStyle(
              decoration: TextDecoration.none,
              color: DARK_BLACK,
              fontWeight: FontWeight.w700,
              fontSize: DIMEN_21),
        ),
      ),
      Container(
        height: 40,
        child: ListView.builder(
          primary: false,
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            List<String> name = ["Ui/Ux", "Coding", "Basic UI"];
            return WidgetAnimator(
                duration: Duration(milliseconds: 1000),
                child: GestureDetector(
                    onTap: () {
                      onCategoryListClick(index);
                    },
                    child: Container(
                        margin:
                            EdgeInsets.only(right: DIMEN_14, left: DIMEN_14),
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(
                          border: Border.all(color: LIGHT_BLUE),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Material(
                            color: CategoryIndex != index
                                ? Colors.white
                                : LIGHT_BLUE, // button color
                            child: SizedBox(
                              child: Center(
                                child: Text(
                                  name[index],
                                  style: TextStyle(
                                      color: CategoryIndex != index
                                          ? LIGHT_BLUE
                                          : WHITE),
                                ),
                              ),
                            ),
                          ),
                        ))));
          },
        ),
      )
    ],
  );
}

buildDesationCollection(BuildContext context) {
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
    //height: MediaQuery.of(context).size.height / 2,
    child: GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: categoryList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        return WidgetAnimator(
            child: PopularCourse(
          cat: categoryList[index],
        ));
      },
    ),
  );
=======
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
>>>>>>> develop
}
