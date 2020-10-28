import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_task/resources/images.dart';

class CourseCardDetails extends StatefulWidget {
  @override
  _CourseCardDetailsState createState() => _CourseCardDetailsState();
}

class _CourseCardDetailsState extends State<CourseCardDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Image(
                height: MediaQuery.of(context).size.height / 1.7,
                fit: BoxFit.fill,
                image: AssetImage(INTERFACE4),
              )),
        ],
      ),
    );
  }
}
