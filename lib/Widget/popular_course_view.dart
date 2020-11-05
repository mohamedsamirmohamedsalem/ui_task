import 'package:flutter/material.dart';
import 'package:ui_task/CourseDesign/model/category.dart';
import 'package:ui_task/CourseDesignDetails/view/CourseCardDetails.dart';
import 'package:ui_task/resources/colors.dart';

class PopularCourse extends StatelessWidget {
  final Category cat;
  PopularCourse({this.cat});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navigateToCourseDetailsScreen(context: context),
      child: Padding(
        padding: EdgeInsets.only(top: 0.0, bottom: 16.0, right: 8, left: 8),
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Container(
                //  color: Colors.blue,
                //height: MediaQuery.of(context).size.height / 2,
                // width: MediaQuery.of(context).size.width / 2,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  elevation: 0,
                  color: Color(0xffF7FFFA),
                  child: Column(
                    children: [
                      SizedBox(height: 16.0),
                      Container(
                        margin: EdgeInsets.only(
                          left: 8,
                        ),
                        child: Container(
                          padding: EdgeInsets.only(right: 32),
                          child: Text(
                            cat.title,
                            style: TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w800,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Container(
                              child: Text(
                                "${cat.lessonCount} lesson",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 16),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "${cat.rating}",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.black,
                                  ),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 12,
                                  color: LIGHT_BLUE,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      //SizedBox(height: 16.0),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: -12,
              right: 20,
              left: 20,
              child: Container(
                //margin: EdgeInsets.only(right: 60.0),
                //padding: EdgeInsets.only(right: 10.0),
                height: 100,
                width: 90,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  elevation: 0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    child: Image.asset(
                      "${cat.imagePath}",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void navigateToCourseDetailsScreen({BuildContext context}) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CourseCardDetails()));
  }
}
