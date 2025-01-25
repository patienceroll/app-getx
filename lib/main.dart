import 'package:app/app/theme/app_theme.dart';
import 'package:app/generated/locales.g.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      translations: AppTranslations(),
      locale: Get.deviceLocale,
      theme: AppTheme.defaultTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
    ),
  );
}

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => AppTranslation.translations;
}
