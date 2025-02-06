import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:app/app/modules/home/views/workbench/workbench_controler.dart';
import 'package:app/generated/locales.g.dart';

class WorkbenchView extends GetView<WorkbenchController> {
  const WorkbenchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Obx(() => Text(LocaleKeys.workbench.tr + controller.text.value)),
    );
  }
}
