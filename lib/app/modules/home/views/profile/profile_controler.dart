import 'package:app/app/global_controler/user_controler.dart';
import 'package:get/get.dart';

class ProfileControler extends GetxController {
  final user = Get.find<UserControler>().user;
  final count = RxInt(1);
  void add() {
    count.value++;
  }

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
}
