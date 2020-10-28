import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseCardDetails extends StatefulWidget {
  CourseCardDetails({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CourseCardDetailsState createState() => _CourseCardDetailsState();
}

class _CourseCardDetailsState extends State<CourseCardDetails> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {}
}
