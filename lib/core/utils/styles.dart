import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static TextStyle text14 = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.white.withOpacity(0.5));
  static const text16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const text18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const text20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );
  static const text30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.normal,
    fontFamily: kGTSectraFineFontFamily,
  );
}