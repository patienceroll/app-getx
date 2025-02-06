import 'package:app/app/modules/home/views/profile/profile.dart';
import 'package:app/app/modules/home/views/workbench/workbench.dart';
import 'package:app/generated/locales.g.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Obx(() => IndexedStack(
            index: controller.currentIndex.value,
            children: [WorkbenchView(), ProfileView()],
          )),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: LocaleKeys.workbench.tr),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: LocaleKeys.profile.tr)
            ],
            currentIndex: controller.currentIndex.value,
            onTap: controller.switchTab,
          )),
    );
  }
}
