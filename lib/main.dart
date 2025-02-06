import 'package:app/app/global_controler/user_controler.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:app/app/global_controler/theme_controler.dart';
import 'package:app/generated/locales.g.dart';

import 'app/routes/app_pages.dart';

void main() {
  Get.put(ThemeController());

  final theme = Get.find<ThemeController>();

  runApp(GetMaterialApp(
    initialRoute: AppPages.INITIAL,
    getPages: AppPages.routes,
    translations: AppTranslations(),
    locale: Get.deviceLocale,
    themeMode: ThemeMode.system,
    theme: theme.theme,
    darkTheme: theme.darkTheme,
    initialBinding: InitialBinding(),
  ));
}

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => AppTranslation.translations;
}

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(UserControler());
  }
}
