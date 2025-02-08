import 'package:app/app/routes/app_pages.dart';
import 'package:app/data/model/user/user.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:app/generated/locales.g.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  final user = User(
                      id: 1,
                      name: 'zxl',
                      email: "1079105171@qq.com",
                      age: 100,
                      isActive: true);
                  controller.userControler.setUser(user);
                  Get.offAndToNamed(Routes.HOME);
                },
                child: Text(LocaleKeys.login.tr)),
            Obx(() => Text(
                '登录状态:${controller.userControler.user.value is User ? controller.userControler.user.value!.name : "未登录"}')),
            ElevatedButton(
                onPressed: () {
                  controller.userControler.clearUser();
                },
                child: Text(LocaleKeys.logout.tr)),
          ],
        ),
      ),
    );
  }
}
