import 'package:flutter/material.dart';

class DarkTheme {
  DarkTheme(this.primaryColor)
      : themeData = ThemeData.dark().copyWith(
            colorScheme: ColorScheme.fromSeed(
                seedColor: primaryColor, brightness: Brightness.dark),
            appBarTheme: AppBarTheme(color: primaryColor),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedItemColor: primaryColor,
            ));

  final Color primaryColor;
  final ThemeData themeData; // 用于存储生成的 ThemeData
}
