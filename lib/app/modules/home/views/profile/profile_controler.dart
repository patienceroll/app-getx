import 'package:get/get.dart';

class ProfileControler extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Get.log("onInit");
  }

  @override
  void onReady() {
    super.onReady();
    Get.log('onReady');
  }

  @override
  void onClose() {
    super.onClose();
    Get.log('onClose');
  }

  final count = RxInt(1);

  void add() {
    count.value++;
  }
}
