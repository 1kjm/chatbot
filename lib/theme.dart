import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData _themeData = ThemeData.light();
  static get theme {
    return _themeData.copyWith(
      scaffoldBackgroundColor: Colors.amber,
    );
  }
}
