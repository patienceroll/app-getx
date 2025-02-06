import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:app/generated/locales.g.dart';

class HomeController extends GetxController {
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
        icon: Icon(Icons.home), label: LocaleKeys.workbench.tr),
    BottomNavigationBarItem(
        icon: Icon(Icons.person), label: LocaleKeys.profile.tr)
  ];

  final currentIndex = 0.obs; // 使用 RxInt 管理当前索引

  void switchTab(int index) {
    currentIndex.value = index; // 更新索引
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
