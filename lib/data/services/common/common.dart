import 'package:app/data/model/user/user.dart';
import 'package:app/data/services/service.dart';
import 'package:get/get.dart';

class Common extends GetConnect {
  Future<Response<CommonResponse<User>>> getUser() => get<CommonResponse<User>>(
        "/api/user/me",
        decoder: (data) => CommonResponse<User>.fromJson(
            data, (json) => User.fromJson(json as Map<String, dynamic>)),
      );
}
