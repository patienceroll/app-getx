import 'package:app/app/global_controler/user_controler.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final userControler = Get.find<UserControler>();

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
