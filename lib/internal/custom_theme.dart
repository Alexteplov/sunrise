import 'package:flutter/material.dart';
import 'package:sunrise/internal/internal_const.dart';

class CustomTheme {
  static ThemeData get light => ThemeData(
        backgroundColor: themeColorWhite,
      );
  static ThemeData get dark => ThemeData(
        backgroundColor: themeColorBlack,
      );
}
