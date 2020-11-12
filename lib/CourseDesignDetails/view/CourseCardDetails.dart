import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_task/resources/Dimens.dart';
import 'package:ui_task/resources/colors.dart';
import 'package:ui_task/resources/constants.dart';
import 'package:ui_task/resources/images.dart';
import 'package:ui_task/resources/strings.dart';
import 'package:ui_task/resources/styles.dart';

class CourseCardDetails extends StatelessWidget {
// MARK:- UI Layer
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        color: WHITE,
        child: Stack(alignment: Alignment.topLeft, children: [
          buildTopImage(context: context),
          buildBottomSection(),
          buildBackButton(context: context),
        ]));
  }

  Widget buildBackButton({BuildContext context}) {
    return GestureDetector(
      onTap: () => back(context: context),
      child: Container(
          padding:
              EdgeInsets.symmetric(horizontal: DIMEN_20, vertical: DIMEN_30),
          child: Icon(Icons.arrow_back)),
    );
  }

  void back({BuildContext context}) {
    Navigator.pop(context);
  }

  Container buildTopImage({BuildContext context}) {
    return Container(
        color: WHITE,
        child: Image(
          height: 300,
          fit: BoxFit.cover,
          image: AssetImage(WEB_INTERFACE),
          width: MediaQuery.of(context).size.width,
        ));
  }

  Widget buildBottomSection() {
    return SingleChildScrollView(
        child: Container(
            color: TRANSPARENT,
            padding: EdgeInsets.only(top: 270),
            child: Stack(alignment: Alignment.topLeft, children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: DIMEN_26),
                padding:
                    EdgeInsets.fromLTRB(DIMEN_20, DIMEN_20, DIMEN_20, DIMEN_0),
                decoration: kBoxDecorationSide20,
                child: buildListOfDetails(),
              ),
              buildFavoriteCircleAvatar(),
            ])));
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
        ]);
  }

  Text buildSingleText({String text, TextStyle style}) {
    return Text(text, style: style);
  }

  Widget buildFavoriteCircleAvatar() {
    return Align(
        alignment: Alignment.topRight,
        child: Padding(
            padding: EdgeInsets.only(right: DIMEN_25, top: DIMEN_1),
            child: CircleAvatar(
                backgroundColor: LIGHT_BLUE,
                radius: DIMEN_26,
                child: Icon(
                  Icons.favorite,
                  color: WHITE,
                ))));
  }

  Padding moneyAndRatingRow() {
    return Padding(
        padding: EdgeInsets.only(top: DIMEN_30, bottom: DIMEN_30),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              buildSingleText(text: cost, style: kMainHeaderBlueTextStyle),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    buildSingleText(text: rating, style: kmeduimBlackTextStyle),
                    SizedBox(width: DIMEN_5),
                    Icon(
                      Icons.star,
                      color: LIGHT_BLUE,
                      size: DIMEN_15,
                    )
                  ])
            ]));
  }

  Widget buildSingleCard({String upText, String downText}) {
    return Card(
        color: WHITE,
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
                  buildSingleText(text: upText, style: ksubHeaderBlueTextStyle),
                  SizedBox(height: DIMEN_5),
                  buildSingleText(
                      text: downText, style: ksubHeaderBlackTextStyle),
                ])));
  }

  Widget buildCourseDetailsCard() {
    return FittedBox(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
          buildSingleCard(upText: "24", downText: classe),
          buildSingleCard(upText: "2Hours", downText: time),
          buildSingleCard(upText: "19", downText: seat),
        ]));
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
                          child:
                              Icon(Icons.clear, color: GREY, size: DIMEN_22)))),
              SizedBox(width: DIMEN_15),
              Expanded(
                  child: GestureDetector(
                      child: Container(
                height: DIMEN_40,
                decoration: kBoxDecorationAllSide8,
                child: Center(
                    child: buildSingleText(
                        text: joinCourseText, style: kButtonTextStyle)),
              )))
            ]));
  }
}
