import 'package:flutter/material.dart';

Color primary = const Color(0xff687daf);

class AppStyles {
  static Color primaryColor = const Color(0xff687daf);
  static Color backgroundColor = const Color(0xffeeedf2);
  static Color textColor = const Color(0xff3b3b3b);
  static Color ticketBlue = const Color(0xFF526799);
  static Color ticketOrange = const Color(0xFFF37B67);

  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    color: textColor,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headLineStyle1 = TextStyle(
    fontSize: 26,
    color: textColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headLineStyle2 = TextStyle(
    fontSize: 21,
    color: textColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headLineStyle3 = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headLineStyle4 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
}
