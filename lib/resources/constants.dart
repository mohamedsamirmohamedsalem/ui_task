import 'package:flutter/material.dart';

import 'Dimens.dart';
import 'colors.dart';

class Constant {
  static ThemeData lightTheme = ThemeData(
    backgroundColor: GRAY_DIVIDER,
    primaryColor: GRAY_DIVIDER,
    accentColor: GRAY_DIVIDER,
    cursorColor: GRAY_DIVIDER,
    scaffoldBackgroundColor: GRAY_DIVIDER,
  );
}

BoxDecoration kBoxDecorationSide20 = BoxDecoration(
  color: Colors.white70,
  border: Border.all(color: Colors.grey[300]),
  borderRadius: BorderRadius.only(
      topRight: Radius.circular(DIMEN_30), topLeft: Radius.circular(DIMEN_30)),
);

BoxDecoration kBoxDecorationAllSide8 = BoxDecoration(
  color: Colors.lightBlue,
  borderRadius: BorderRadius.all(Radius.circular(DIMEN_8)),
);

BoxDecoration kBoxDecorationGreyBorder = BoxDecoration(
  border: Border.all(color: Colors.grey),
  borderRadius: BorderRadius.all(Radius.circular(DIMEN_7)),
);
