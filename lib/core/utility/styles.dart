import 'package:flutter/material.dart';

abstract class Styles {
  // App Fonts
  static String englishFontFamily = 'Poppins';
  static String arabicFontFamily = 'IBM Plex Sans Arabic';

  // Styles by Sizes.
  static TextStyle style24() {
    return  TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        fontFamily: arabicFontFamily,
        color: const Color(0xff161616)
    );
  }
  static TextStyle style16() {
    return  TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      fontFamily: arabicFontFamily,
      color: Colors.white
    );
  }
  static TextStyle style14() {
    return  TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        fontFamily: arabicFontFamily,
        color: const Color(0xff161616)
    );
  }
  static TextStyle style12() {
    return  TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w300,
        fontFamily: arabicFontFamily,
        color: const Color(0xffEDEDED)
    );
  }
}