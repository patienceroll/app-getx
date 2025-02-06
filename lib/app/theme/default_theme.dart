import 'package:flutter/material.dart';

class DefaultTheme {
  DefaultTheme(this.primaryColor)
      : themeData = ThemeData.light().copyWith(
            colorScheme: ColorScheme.fromSeed(
                dynamicSchemeVariant: DynamicSchemeVariant.vibrant,
                seedColor: primaryColor,
                brightness: Brightness.light),
            appBarTheme: AppBarTheme(color: primaryColor),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedItemColor: primaryColor,
            ));

  final Color primaryColor;
  final ThemeData themeData; // 用于存储生成的 ThemeData
}
