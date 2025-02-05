import 'dart:developer';

import 'package:app/app/modules/home/views/profile/profile_controler.dart';
import 'package:app/generated/locales.g.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileView extends GetView<ProfileControler> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
     Get.log("ProfileViewbuild");
    return Obx(() => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(LocaleKeys.profile.tr + controller.count.value.toString()),
        IconButton(onPressed: controller.add, icon: Icon(Icons.add))
      ],
    ));
  }
}
