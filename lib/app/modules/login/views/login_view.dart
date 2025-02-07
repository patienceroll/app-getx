import 'package:app/app/routes/app_pages.dart';
import 'package:app/data/model/user.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:app/generated/locales.g.dart';
import 'package:get_storage/get_storage.dart';

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
                  controller.storage.write("user", user.toJson()).then((_) {
                    Get.offAllNamed(Routes.HOME);
                  });
                },
                child: Text(LocaleKeys.login.tr))
          ],
        ),
      ),
    );
  }
}
