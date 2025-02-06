import 'package:app/data/model/user.dart';
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
            Text(
              LocaleKeys.login.tr,
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
                onPressed: () {
                  controller.userControler.setUser(User(
                      id: 1,
                      name: 'zxl',
                      email: "1079105171@qq.com",
                      age: 100,
                      isActive: true));
                  Get.back();
                },
                child: Text("登录"))
          ],
        ),
      ),
    );
  }
}
