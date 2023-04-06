import 'package:flutter/material.dart';

Color primary = const Color(0xFFFFFFFF);

class Styles {
  static Color primaryColor = primary;
  static Color secondaryColor = const Color(0xff1C203D);
  static Color effectColor = const Color(0xff1C203D);
  static Color tagColor = const Color(0xFF6C6C6C);
  static Color bgColor = const Color(0xFFeeedf2);

  static TextStyle textStyle = TextStyle(
      fontSize: 16, color: secondaryColor, fontWeight: FontWeight.w500);
  static TextStyle headLine = TextStyle(
      fontSize: 32, color: secondaryColor, fontWeight: FontWeight.bold);
  static TextStyle headLine2 = TextStyle(
      fontSize: 22, color: secondaryColor, fontWeight: FontWeight.bold);
  static TextStyle headLine3 = TextStyle(
      fontSize: 16, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
  static TextStyle headLine4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}
