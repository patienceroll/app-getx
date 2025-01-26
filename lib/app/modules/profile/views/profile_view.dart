import 'package:app/generated/locales.g.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Center(
        child: Text(
          LocaleKeys.profile.tr,
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            items: controller.bottomNavController.items,
            currentIndex: controller.bottomNavController.currentIndex.value,
            onTap: (int int) {
              controller.bottomNavController.changePage(int);
            },
            selectedItemColor: Get.theme.primaryColor,
            unselectedItemColor: Get.theme.unselectedWidgetColor,
            backgroundColor: Get.theme.scaffoldBackgroundColor,
          )),
    );
  }
}
