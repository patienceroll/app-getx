import 'package:app/app/global_controler/user_controler.dart';
import 'package:app/app/routes/app_pages.dart';
import 'package:app/data/model/user.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  final userControler = Get.find<UserControler>();
  final storage = GetStorage();

  @override
  void onInit() {
    super.onInit();
    final user = storage.read<User>("user");
    if (user is User) {
      userControler.setUser(user);
      Get.offAndToNamed(Routes.HOME);
    }
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
