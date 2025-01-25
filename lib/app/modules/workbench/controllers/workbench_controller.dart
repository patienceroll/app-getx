import 'package:app/app/navigation/bottom_navigation_controler.dart';
import 'package:get/get.dart';

class WorkbenchController extends GetxController {
  final BottomNavigationControler bottomNavController =
      Get.find<BottomNavigationControler>();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
