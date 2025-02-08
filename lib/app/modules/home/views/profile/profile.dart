import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:app/app/modules/home/views/profile/profile_controler.dart';
import 'package:app/app/routes/app_pages.dart';
import 'package:app/generated/locales.g.dart';

class ProfileView extends GetView<ProfileControler> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Obx(() =>
            Text(LocaleKeys.profile.tr + controller.count.value.toString())),
        Obx(() {
          return Text(
            controller.user.value?.name ?? "未登录",
          );
        }),
        IconButton(onPressed: controller.add, icon: Icon(Icons.add)),
        ElevatedButton(
            onPressed: () {
              Get.toNamed(Routes.LOGIN);
            },
            child: Text(LocaleKeys.login.tr)),
      ],
    ));
  }
}
