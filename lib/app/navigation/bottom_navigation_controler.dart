import 'package:app/app/routes/app_pages.dart';
import 'package:app/generated/locales.g.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationControler extends GetxController {
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
        icon: Icon(Icons.home), label: LocaleKeys.workbench.tr),
    BottomNavigationBarItem(
        icon: Icon(Icons.person), label: LocaleKeys.profile.tr)
  ];

  var currentIndex = 0.obs; // 使用 RxInt 管理当前索引

  void changePage(int index) {
    currentIndex.value = index; // 更新索引
    Get.offNamed([Routes.WORKBENCH, Routes.PROFILE][index]);
  }
}
