import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_task/resources/Dimens.dart';

Widget SearcharBar(context) {
  return Container(
    height: DIMEN_45,
    width: MediaQuery.of(context).size.width * 0.7,
    alignment: Alignment.centerRight,
    margin:
        const EdgeInsets.symmetric(horizontal: DIMEN_16, vertical: DIMEN_10),
    decoration: BoxDecoration(
      color: Color(0xFFE0E0E0),
      borderRadius: BorderRadius.all(Radius.circular(DIMEN_15)),
    ),
    child: TextField(
      style: TextStyle(fontSize: DIMEN_16, color: Colors.black),
      cursorColor: Colors.grey,
      decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
            size: 16,
          ),
          hintText: "Search...",
          hintStyle: TextStyle(fontSize: 14, color: Colors.grey)),
    ),
  );
}
