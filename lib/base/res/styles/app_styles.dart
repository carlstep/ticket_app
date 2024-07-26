import 'package:flutter/material.dart';

// color and textstyle theme for the app

Color primary = const Color(0xFF687daf);

class AppStyle {
  // static is used because the variable is used only inside the AppStyle class.
  // a static variable is shared across instances of a class.

  // COLORS
  static Color primaryColor = primary;
  static Color bgColor = const Color(0xFFeeedf2);
  static Color textColor = const Color(0xFF3b3b3b);
  // ticket view colors
  static Color ticketBlue = const Color(0xFF526799);
  static Color ticketOrange = const Color(0xFFF37B67);
  // hotel view colors
  static Color kakiColor = const Color(0xFFd2bdb6);
  // app text icon colors
  static Color iconColor = const Color(0xFFBFC2DF);
  // Find Ticket color
  static Color findTicketColor = const Color(0xD91130CE);
  // circle color
  static Color circleColor = const Color(0xFF189999);
  // white ticket color
  static Color ticketWhite = Colors.white38;
  // alt icon color
  static Color altDotColor = const Color(0xFF8ACCF7);
  // app text icon colors
  static Color altIconColor = const Color(0xFFBACCF7);

  // TEXT STYLES
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

  static TextStyle headlineStyle4 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.grey.shade700,
  );
}
