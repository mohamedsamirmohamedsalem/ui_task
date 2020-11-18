import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_task/resources/Dimens.dart';
import 'package:ui_task/resources/colors.dart';

Widget CategoryView(context, Function onCategoryListClick, int CategoryIndex) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        padding: const EdgeInsets.only(
            top: DIMEN_8, left: DIMEN_16, right: DIMEN_16, bottom: DIMEN_24),
        child: Text(
          "Category",
          style: TextStyle(
              decoration: TextDecoration.none,
              color: DARK_BLACK,
              fontWeight: FontWeight.w700,
              fontSize: DIMEN_21),
        ),
      ),
      Container(
        height: 40,
        child: ListView.builder(
          primary: false,
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            List<String> name = ["Ui/Ux", "Coding", "Basic UI"];
            return GestureDetector(
                onTap: () {
                  onCategoryListClick(index);
                },
                child: Container(
                    margin: EdgeInsets.only(right: DIMEN_14, left: DIMEN_14),
                    width: MediaQuery.of(context).size.width * 0.25,
                    decoration: BoxDecoration(
                      border: Border.all(color: LIGHT_BLUE),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Material(
                        color: CategoryIndex != index
                            ? Colors.white
                            : LIGHT_BLUE, // button color
                        child: SizedBox(
                          child: Center(
                            child: Text(
                              name[index],
                              style: TextStyle(
                                  color: CategoryIndex != index
                                      ? LIGHT_BLUE
                                      : WHITE),
                            ),
                          ),
                        ),
                      ),
                    )));
          },
        ),
      )
    ],
  );
}
