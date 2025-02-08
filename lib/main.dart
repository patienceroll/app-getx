import 'package:app/app/global_controler/user_controler.dart';
import 'package:app/data/model/user/user.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:app/app/global_controler/theme_controler.dart';
import 'package:app/generated/locales.g.dart';
import 'package:get_storage/get_storage.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await GetStorage.init();
  Get.put(ThemeController());
  Get.put(UserControler());

  final theme = Get.find<ThemeController>();
  final user = Get.find<UserControler>();

  runApp(GetMaterialApp(
    initialRoute: user.user.value is User ? Routes.HOME : Routes.LOGIN,
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
  void dependencies() {}
}
