import 'package:flutter/cupertino.dart';
import 'package:ui_task/resources/Dimens.dart';
import 'package:ui_task/resources/colors.dart';

Widget HomeHeaderView(context) {
  return Container(
      padding: const EdgeInsets.only(
          top: DIMEN_32, left: DIMEN_16, right: DIMEN_16, bottom: DIMEN_16),
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Choose Your",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: GRAY_ITEM_TEXT,
                      fontWeight: FontWeight.w400,
                      fontSize: DIMEN_18),
                ),
                Text(
                  "Design Course",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: DARK_BLACK,
                      fontWeight: FontWeight.w700,
                      fontSize: DIMEN_21),
                ),
              ],
            ),
          ),
          Container(
            width: 35.0,
            height: 35.0,
            child: Image.asset("assets/userImage.png"),
          ),
        ],
      ));
}
