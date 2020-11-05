import 'package:flutter/material.dart';
import 'package:ui_task/CourseDesign/view/CourseDesignScreen.dart';
import 'package:ui_task/resources/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Constant.lightTheme,
      debugShowCheckedModeBanner: false,
      home: CourseDesignScreen(),
    );
  }
}
