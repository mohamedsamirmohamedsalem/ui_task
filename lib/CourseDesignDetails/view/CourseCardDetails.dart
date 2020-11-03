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
  final String classe = "Classe";
  final String seat = "Seat";
  final String time = "Time";

  // MARK:- UI Layer
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
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

  Container buildTopImage() {
    return Container(
      color: Colors.white,
      child: Image(
        height: 250,
        fit: BoxFit.cover,
        image: AssetImage(INTERFACE4),
        width: MediaQuery.of(context).size.width,
      ),
    );
  }

  Widget buildBottomSection() {
    return SingleChildScrollView(
      child: Container(
        color: Colors.transparent,
        padding: EdgeInsets.only(top: 250),
        child: Stack(
          alignment: Alignment.topLeft,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: DIMEN_26),
              padding:
                  EdgeInsets.fromLTRB(DIMEN_20, DIMEN_20, DIMEN_20, DIMEN_0),
              decoration: kBoxDecorationSide20,
              child: buildListOfDetails(),
            ),
            buildFavoriteCircleAvatar(),
          ],
        ),
      ),
    );
  }

  Widget buildListOfDetails() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        buildSingleText(text: webDesign, style: kMainHeaderBlackTextStyle),
        buildSingleText(text: course, style: kMainHeaderBlackTextStyle),
        moneyAndRatingRow(),
        buildCourseDetailsCard(),
        buildSingleText(
            text: courseDetailsText, style: ksubHeaderBlackTextStyle),
        buildBottomButtons(),
      ],
    );
  }

  Text buildSingleText({String text, TextStyle style}) {
    return Text(
      text,
      style: style,
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

  Widget buildSingleCard({String upText, String downText}) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.fromLTRB(DIMEN_20, DIMEN_0, DIMEN_20, DIMEN_40),
      elevation: DIMEN_2,
      child: Container(
        width: DIMEN_60,
        height: DIMEN_60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text(
              upText,
              style: ksubHeaderBlueTextStyle,
            ),
            SizedBox(
              height: DIMEN_5,
            ),
            Text(
              downText,
              style: ksubHeaderBlackTextStyle,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCourseDetailsCard() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        buildSingleCard(upText: "24", downText: classe),
        buildSingleCard(upText: "2Hours", downText: time),
        buildSingleCard(upText: "19", downText: seat),
      ],
    );
  }

  Widget buildBottomButtons() {
    return Padding(
      padding: EdgeInsets.only(top: DIMEN_40, bottom: DIMEN_20),
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
