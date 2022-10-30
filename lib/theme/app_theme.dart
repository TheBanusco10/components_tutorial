import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primaryColor,

    appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor
    ),

    listTileTheme: const ListTileThemeData(
      iconColor: primaryColor
    ),
  );
}