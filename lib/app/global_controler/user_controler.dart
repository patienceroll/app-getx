import 'package:app/data/model/user.dart';
import 'package:get/get.dart';

class UserControler extends GetxController {
  Rx<User?> user = Rx<User?>(null);

  void setUser(User u) {
    user.value = u;
  }
}
