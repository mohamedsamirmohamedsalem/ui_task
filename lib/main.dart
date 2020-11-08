import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:ui_task/CourseDesign/view/CourseDesignScreen.dart';

void main() {
  runApp(DevicePreview(
    areSettingsEnabled: false,
    builder: (context) => MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CourseDesignScreen(),
    );
  }
}
