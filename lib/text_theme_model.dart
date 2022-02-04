import 'package:flutter/material.dart';

class CustomTextTheme extends TextTheme {
  TextStyle get productText =>
      TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  TextStyle get whiteText => TextStyle(color: Colors.white, fontSize: 15);
}
