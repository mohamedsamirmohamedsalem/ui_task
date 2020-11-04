import 'package:flutter/material.dart';
import 'package:ui_task/CourseDesign/model/category.dart';
import 'package:ui_task/resources/colors.dart';

class CategoryItem extends StatelessWidget {
  final Category cat;
  CategoryItem({this.cat});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 8, left: 8),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.6,
        child: Stack(
          children: [
            Positioned(
              right: 8.0,
              height: 140.0,
              width: MediaQuery.of(context).size.width / 1.9,
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
                        left: 60,
                      ),
                      //padding: EdgeInsets.only(left: 15.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
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
                          margin: EdgeInsets.only(left: 60),
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
                    SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Container(
                            child: Text(
                              "${cat.money}\$",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w700,
                                color: LIGHT_BLUE,
                              ),
                            ),
                          ),
                        ),
                        Container(
                            width: 20,
                            height: 20,
                            alignment: Alignment.bottomLeft,
                            decoration: BoxDecoration(
                              color: LIGHT_BLUE,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            margin: EdgeInsets.only(right: 16, top: 2),
                            child: Center(
                              child: Icon(
                                Icons.add,
                                size: 12,
                                color: Colors.white,
                              ),
                            ))
                      ],
                    ),
                    SizedBox(height: 7.0),
                  ],
                ),
              ),
            ),
            Positioned(
              left: -2,
              top: 24,
              child: Stack(
                children: [
                  //Image
                  Container(
                    //margin: EdgeInsets.only(right: 60.0),
                    //padding: EdgeInsets.only(right: 10.0),
                    height: 100,
                    width: 90,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      elevation: 2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        child: Image.asset(
                          "${cat.imagePath}",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        //),
      ),
    );
  }
}
