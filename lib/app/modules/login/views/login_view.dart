import 'package:app/generated/locales.g.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
        child: Text(
          LocaleKeys.login.tr,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
