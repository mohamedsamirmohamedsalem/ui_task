import 'package:flutter/material.dart';
import 'package:ui_task/CourseDesign/model/category.dart';
import 'package:ui_task/CourseDesignDetails/view/CourseCardDetails.dart';
import 'package:ui_task/resources/Dimens.dart';
import 'package:ui_task/resources/colors.dart';
import 'package:ui_task/resources/styles.dart';

class PopularCourse extends StatelessWidget {
  final Category cat;
  PopularCourse({this.cat});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => navigateToCourseDetailsScreen(context: context),
        child: Padding(
            padding: EdgeInsets.only(
                top: DIMEN_0, bottom: DIMEN_16, right: DIMEN_8, left: DIMEN_8),
            child: Stack(children: <Widget>[
              Positioned(
                  child: Container(
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(DIMEN_10)),
                          elevation: DIMEN_0,
                          color: GRAY_DIVIDER,
                          child: Column(children: [
                            SizedBox(height: DIMEN_16),
                            Container(
                                margin: EdgeInsets.only(left: DIMEN_8),
                                child: Container(
                                    padding: EdgeInsets.only(right: DIMEN_32),
                                    child: Text(
                                      cat.title,
                                      style: kBlackTextStyle800,
                                      textAlign: TextAlign.left,
                                    ))),
                            SizedBox(height: DIMEN_8),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                      margin: EdgeInsets.only(left: DIMEN_8),
                                      child: Container(
                                          child: Text(
                                        "${cat.lessonCount} lesson",
                                        style: kBlackTextStyle54,
                                      ))),
                                  Container(
                                      margin: EdgeInsets.only(right: DIMEN_16),
                                      child: Row(children: <Widget>[
                                        Text(
                                          "${cat.rating}",
                                          style: kBlackTextStyle54,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: DIMEN_12,
                                          color: LIGHT_BLUE,
                                        )
                                      ]))
                                ])
                            //SizedBox(height: 16.0),
                          ])))),
              Positioned(
                  bottom: DIMEN__12,
                  right: DIMEN_20,
                  left: DIMEN_20,
                  child: Container(
                      height: DIMEN_100,
                      width: DIMEN_90,
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(DIMEN_10)),
                          elevation: DIMEN_0,
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(DIMEN_10)),
                              child: Image.asset(
                                "${cat.imagePath}",
                                fit: BoxFit.cover,
                              )))))
            ])));
  }

  void navigateToCourseDetailsScreen({BuildContext context}) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CourseCardDetails()));
  }
}
