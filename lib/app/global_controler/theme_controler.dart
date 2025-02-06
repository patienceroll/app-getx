import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:app/app/theme/dark_theme.dart';
import 'package:app/app/theme/default_theme.dart';

class ThemeController extends GetxController {
  var primaryColor = Color(0xFF10893E).obs;
  late ThemeData theme;
  late ThemeData darkTheme;

  void setPrimaryColor(Color color) {
    primaryColor.value = color;
    theme = DefaultTheme(primaryColor.value).themeData;
    darkTheme = DarkTheme(primaryColor.value).themeData;
  }

  @override
  onInit() {
    super.onInit();
    theme = DefaultTheme(primaryColor.value).themeData;
    darkTheme = DarkTheme(primaryColor.value).themeData;
  }
}
