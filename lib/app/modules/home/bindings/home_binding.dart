import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../views/profile/profile_controler.dart';
import '../views/workbench/workbench_controler.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<ProfileControler>(() => ProfileControler());
    Get.lazyPut<WorkbenchController>(() => WorkbenchController());
  }
}
