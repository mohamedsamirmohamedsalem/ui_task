import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_task/resources/Dimens.dart';
import 'package:ui_task/resources/colors.dart';
import 'package:ui_task/resources/constants.dart';
import 'package:ui_task/resources/images.dart';

class CourseCardDetails extends StatefulWidget {
  @override
  _CourseCardDetailsState createState() => _CourseCardDetailsState();
}

class _CourseCardDetailsState extends State<CourseCardDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          buildTopImage(),
          buildBottomSection(),
        ],
      ),
    );
  }

  // MARK:- UI Layer

  Image buildTopImage() {
    return Image(
      height: MediaQuery.of(context).size.height / 2.3 + 40,
      fit: BoxFit.fill,
      image: AssetImage(INTERFACE4),
    );
  }

  Positioned buildBottomSection() {
    return Positioned.fill(
      top: MediaQuery.of(context).size.height / 2.2,
      child: Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: DIMEN_26),
            decoration: boxDecorationSide20,
            child: buildListOfTitles(),
          ),
          buildFavoriteCircleAvatar(),
        ],
      ),
    );
  }

  Widget buildFavoriteCircleAvatar() {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
          padding: EdgeInsets.only(right: DIMEN_25, top: DIMEN_1),
          child: CircleAvatar(
            backgroundColor: BLUE,
            radius: DIMEN_26,
            child: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
          )),
    );
  }

  Widget buildListOfTitles() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text("title 1"),
        Text("title 2"),
        Text("title 3"),
      ],
    );
  }
}
