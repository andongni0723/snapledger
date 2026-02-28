import 'package:flutter/material.dart';

class AppTypography {
  static const String fontFamily = 'Google Sans Flex';

  static TextTheme textTheme(TextTheme base) {
    return base.apply(fontFamily: fontFamily);
  }
}