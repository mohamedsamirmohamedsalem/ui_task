import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_task/CourseDesign/model/category.dart';
import 'package:ui_task/resources/Dimens.dart';
import 'package:ui_task/resources/colors.dart';
import 'package:ui_task/resources/constants.dart';
import 'package:ui_task/resources/strings.dart';
import 'package:ui_task/resources/styles.dart';

class CourseCardDetails extends StatelessWidget {
// MARK:- UI Layer
  final Category cat;
  CourseCardDetails({this.cat});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        color: WHITE,
        child: Stack(alignment: Alignment.topLeft, children: [
          buildTopImage(context: context, webImage: 'assets/webInterFace.png'),
          buildBottomSection(context: context),
          buildBackButton(context: context),
        ]));
  }

  Widget buildBackButton({BuildContext context}) {
    return GestureDetector(
      onTap: () => back(context: context),
      child: Container(
          padding:
              EdgeInsets.symmetric(horizontal: DIMEN_24, vertical: DIMEN_38),
          child: Icon(Icons.arrow_back_ios)),
    );
  }

  void back({BuildContext context}) {
    Navigator.pop(context);
  }

  Container buildTopImage({BuildContext context, String webImage}) {
    return Container(
        color: WHITE,
        height: MediaQuery.of(context).size.height / 2,
        child: Image(
          fit: BoxFit.cover,
          image: AssetImage(webImage),
          width: MediaQuery.of(context).size.width,
        ));
  }

  Widget buildBottomSection({BuildContext context}) {
    return SingleChildScrollView(
        child: Container(
            color: TRANSPARENT,
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 2.5),
            child: Stack(alignment: Alignment.topLeft, children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: DIMEN_26),
                padding:
                    EdgeInsets.fromLTRB(DIMEN_20, DIMEN_20, DIMEN_20, DIMEN_0),
                decoration: kBoxDecorationSide20,
                child: buildListOfDetails(context),
              ),
              buildFavoriteCircleAvatar(),
            ])));
  }

  Widget buildListOfDetails(context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          buildSingleText(text: cat.title, style: kMainHeaderBlackTextStyle),
          buildSingleText(text: course, style: kMainHeaderBlackTextStyle),
          moneyAndRatingRow(),
          buildCourseDetailsCard(),
          buildSingleText(
              text: courseDetailsText, style: ksubDesBlackTextStyle),
          buildBottomButtons(context),
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
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 6,
                    color: Colors.grey,
                  )
                ],
              ),
              child: CircleAvatar(
                  backgroundColor: LIGHT_BLUE,
                  radius: DIMEN_26,
                  child: Icon(
                    Icons.favorite,
                    color: WHITE,
                  )),
            )));
  }

  Padding moneyAndRatingRow() {
    return Padding(
        padding: EdgeInsets.only(top: DIMEN_30, bottom: DIMEN_30),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              buildSingleText(
                  text: "\$${cat.money.toString()}",
                  style: kMainHeaderBlueTextStyle),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    buildSingleText(
                        text: cat.rating.toString(),
                        style: kmeduimBlackTextStyle),
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
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        elevation: DIMEN_5,
        child: Container(
            width: 100,
            height: 80,
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
          buildSingleCard(upText: cat.lessonCount.toString(), downText: classe),
          buildSingleCard(upText: "2Hours", downText: time),
          buildSingleCard(upText: "19", downText: seat),
        ]));
  }

  Widget buildBottomButtons(context) {
    return Container(
        padding: EdgeInsets.only(top: DIMEN_20, bottom: DIMEN_20),
        child: Container(
          height: DIMEN_90,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                GestureDetector(
                    child: Container(
                        height: DIMEN_45,
                        width: DIMEN_40,
                        decoration: kBoxDecorationGreyBorder,
                        child: Center(
                            child: Icon(Icons.add,
                                color: LIGHT_BLUE, size: DIMEN_22)))),
                SizedBox(width: DIMEN_15),
                Expanded(
                  child: Card(
                    elevation: 3.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.transparent,
                    child: GestureDetector(
                        child: Container(
                      height: DIMEN_45,
                      decoration: kBoxDecorationAllSide8,
                      child: Center(
                          child: buildSingleText(
                              text: joinCourseText, style: kButtonTextStyle)),
                    )),
                  ),
                )
              ]),
        ));
  }
}
