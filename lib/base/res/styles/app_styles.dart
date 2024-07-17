import 'package:flutter/material.dart';

// color and textstyle theme for the app

Color primary = const Color(0xFF687daf);

class AppStyle {
  // static is used because the variable is used only inside the AppStyle class.
  // a static variable is shared across instances of a class.

  static Color primaryColor = primary;

  static Color bgColor = const Color(0xFFeeedf2);

  static Color textColor = const Color(0xFF3b3b3b);

  static TextStyle textStyle =
      TextStyle(fontSize: 18, color: textColor, fontWeight: FontWeight.w500);

  static TextStyle headlineStyle1 = TextStyle(
    fontSize: 24,
    color: AppStyle.textColor,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headlineStyle2 = TextStyle(
    fontSize: 21,
    color: AppStyle.textColor,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headlineStyle3 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}
