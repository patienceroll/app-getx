import 'package:app/data/model/user.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class UserControler extends GetxController {
  Rx<User?> user = Rx<User?>(null);
  final storage = GetStorage();

  void setUser(User u) {
    user.value = u;
    storage.write("user", u.toJson());
  }

  @override
  void onInit() {
    super.onInit();
    final u = storage.read<Map<String, dynamic>>("user");
    if (u != null) {
      user.value = User.fromJson(u);
    }
  }
}
