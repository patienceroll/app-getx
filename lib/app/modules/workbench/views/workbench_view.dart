import 'package:app/generated/locales.g.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/workbench_controller.dart';

class WorkbenchView extends GetView<WorkbenchController> {
  const WorkbenchView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.workbench.tr),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          LocaleKeys.workbench.tr,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
