import 'package:flutter/material.dart';
import 'package:ui_task/CourseDesign/model/category.dart';
import 'package:ui_task/CourseDesignDetails/view/CourseCardDetails.dart';
import 'package:ui_task/resources/Dimens.dart';
import 'package:ui_task/resources/colors.dart';
import 'package:ui_task/resources/styles.dart';

class CategoryItem extends StatelessWidget {
  final Category cat;
  CategoryItem({this.cat});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
            top: DIMEN_5, bottom: DIMEN_5, right: DIMEN_8, left: DIMEN_8),
        child: GestureDetector(
          onTap: () => navigateToCourseDetailsScreen(context: context),
          child: Container(
              width: MediaQuery.of(context).size.width / 1.6,
              child: Stack(children: [
                Positioned(
                    right: DIMEN_8,
                    height: DIMEN_140,
                    width: MediaQuery.of(context).size.width / 1.9,
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(DIMEN_10)),
                        elevation: DIMEN_0,
                        color: GRAY_DIVIDER,
                        child: Column(children: [
                          SizedBox(height: DIMEN_16),
                          Container(
                              margin: EdgeInsets.only(left: DIMEN_60),
                              //padding: EdgeInsets.only(left: 15.0),
                              child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Text(
                                    cat.title,
                                    style: kBlackTextStyle800,
                                    textAlign: TextAlign.left,
                                  ))),
                          SizedBox(height: DIMEN_8),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                    margin: EdgeInsets.only(left: DIMEN_60),
                                    child: Container(
                                        child: Text("${cat.lessonCount} lesson",
                                            style: kBlackTextStyle54.copyWith(
                                                fontSize: DIMEN_2)))),
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
                              ]),
                          SizedBox(height: DIMEN_16),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    margin: EdgeInsets.only(left: DIMEN_60),
                                    child: Container(
                                        child: Text(
                                      "${cat.money}\$",
                                      style: kBlueTextStyle700,
                                    ))),
                                Container(
                                    width: 20,
                                    height: 20,
                                    alignment: Alignment.bottomLeft,
                                    decoration: BoxDecoration(
                                      color: LIGHT_BLUE,
                                      borderRadius:
                                          BorderRadius.circular(DIMEN_5),
                                    ),
                                    margin: EdgeInsets.only(
                                        right: DIMEN_16, top: DIMEN_2),
                                    child: Center(
                                        child: Icon(
                                      Icons.add,
                                      size: DIMEN_12,
                                      color: Colors.white,
                                    )))
                              ]),
                          SizedBox(height: DIMEN_7),
                        ]))),
                Positioned(
                    left: DIMEN__2,
                    top: DIMEN_24,
                    child: Stack(children: [
                      //Image
                      Container(
                          //margin: EdgeInsets.only(right: 60.0),
                          //padding: EdgeInsets.only(right: 10.0),
                          height: DIMEN_100,
                          width: DIMEN_90,
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(DIMEN_10)),
                              elevation: DIMEN_2,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(DIMEN_10)),
                                  child: Image.asset(
                                    "${cat.imagePath}",
                                    fit: BoxFit.cover,
                                  ))))
                    ]))
              ])
              //),
              ),
        ));
  }

  void navigateToCourseDetailsScreen({BuildContext context}) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CourseCardDetails()));
  }
}
