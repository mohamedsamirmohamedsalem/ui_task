import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:ui_task/CourseDesign/view/CourseDesignScreen.dart';
import 'package:ui_task/resources/constants.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) {
      return MyApp();
    },
  ));
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
