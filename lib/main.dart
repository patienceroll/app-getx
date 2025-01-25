import 'package:app/app/navigation/bottom_navigation_controler.dart';
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
      initialBinding: InitialBinding(),
    ),
  );
}

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => AppTranslation.translations;
}

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BottomNavigationControler());
  }
}
