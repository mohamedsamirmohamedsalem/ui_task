import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_task/resources/Dimens.dart';
import 'package:ui_task/resources/constants.dart';
import 'package:ui_task/resources/images.dart';
import 'package:ui_task/resources/styles.dart';

class CourseCardDetails extends StatefulWidget {
  @override
  _CourseCardDetailsState createState() => _CourseCardDetailsState();
}

class _CourseCardDetailsState extends State<CourseCardDetails> {
  final String courseDetailsText =
      "Lorem ipsum dolor sit amet, sea eius luptatum principes ei, sea quidam dissentias vituperatoribus an. Vis dicam ceteros eu. Ex omnes graecis similique cum. Choro equidem ea has.";
  final String webDesign = "Web Design";
  final String course = "Course";
  final String cost = "\$25.99";
  final String rating = "4.9";
  final String joinCourseText = "Join Course";
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
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
      height: MediaQuery.of(context).size.height / DIMEN_3 + DIMEN_45,
      fit: BoxFit.cover,
      image: AssetImage(INTERFACE4),
      width: MediaQuery.of(context).size.width,
    );
  }

  Positioned buildBottomSection() {
    return Positioned.fill(
      top: MediaQuery.of(context).size.height / 2.8,
      child: Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: DIMEN_26),
            padding:
                EdgeInsets.symmetric(horizontal: DIMEN_20, vertical: DIMEN_20),
            decoration: kBoxDecorationSide20,
            child: buildListOfTitles(),
          ),
          buildFavoriteCircleAvatar(),
        ],
      ),
    );
  }

  Widget buildListOfTitles() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text(
          webDesign,
          style: kMainHeaderBlackTextStyle,
        ),
        Text(
          course,
          style: kMainHeaderBlackTextStyle,
        ),
        moneyAndRatingRow(),
        Text(
          courseDetailsText,
          style: ksubHeaderBlackTextStyle,
        ),
        buildBottomButtons(),
      ],
    );
  }

  Widget buildFavoriteCircleAvatar() {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
          padding: EdgeInsets.only(right: DIMEN_25, top: DIMEN_1),
          child: CircleAvatar(
            backgroundColor: Colors.lightBlue,
            radius: DIMEN_26,
            child: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
          )),
    );
  }

  Padding moneyAndRatingRow() {
    return Padding(
      padding: EdgeInsets.only(top: DIMEN_30, bottom: DIMEN_30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            cost,
            style: kMainHeaderBlueTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text(
                rating,
                style: kmeduimBlackTextStyle,
              ),
              SizedBox(width: DIMEN_5),
              Icon(
                Icons.star,
                color: Colors.lightBlue,
                size: DIMEN_15,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildBottomButtons() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: DIMEN_40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          GestureDetector(
            child: Container(
              height: DIMEN_39,
              width: DIMEN_50,
              decoration: kBoxDecorationGreyBorder,
              child: Center(
                child: Icon(
                  Icons.clear,
                  color: Colors.grey,
                  size: DIMEN_22,
                ),
              ),
            ),
          ),
          SizedBox(width: DIMEN_15),
          Expanded(
            child: GestureDetector(
              child: Container(
                height: DIMEN_40,
                decoration: kBoxDecorationAllSide8,
                child: Center(
                  child: Text(
                    joinCourseText,
                    style: kButtonTextStyle,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
