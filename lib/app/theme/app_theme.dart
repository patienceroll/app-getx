import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get defaultTheme {
    return ThemeData(
      // 设置亮色主题
      brightness: Brightness.light,

      // 设置主色调
      primaryColor: Color(0xFF10893E),

      // 设置文字主题
      textTheme: TextTheme(),

      // 设置按钮主题
      buttonTheme: ButtonThemeData(
        buttonColor: Color(0xFF10893E),
        textTheme: ButtonTextTheme.primary,
      ),

      // 设置 AppBar 主题
      appBarTheme: AppBarTheme(
        color: Color(0xFF10893E),
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),

      // 设置输入框主题
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(),
        labelStyle: TextStyle(color: Color(0xFF10893E)),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: Color(0xFF10893E),
      textTheme: TextTheme(),
      appBarTheme: AppBarTheme(
        color: Color(0xFF10893E),
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
