import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get defaultTheme {
    return ThemeData(
      // 设置亮色主题
      brightness: Brightness.light,

      // 设置主色调
      primaryColor: Colors.blue,

      // 设置文字主题
      textTheme: TextTheme(),

      // 设置按钮主题
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.blue,
        textTheme: ButtonTextTheme.primary,
      ),

      // 设置 AppBar 主题
      appBarTheme: AppBarTheme(
        color: Colors.blue,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),

      // 设置输入框主题
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(),
        labelStyle: TextStyle(color: Colors.blue),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.indigo,
      textTheme: TextTheme(),
      appBarTheme: AppBarTheme(
        color: Colors.indigo,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
