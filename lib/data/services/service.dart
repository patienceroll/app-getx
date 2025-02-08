import 'package:get/get_connect/connect.dart';
import 'package:json_annotation/json_annotation.dart';

part 'service.g.dart'; // 生成的代码文件

@JsonSerializable(genericArgumentFactories: true)
class CommonResponse<T> {
  final int status;
  final T data;
  final String message;

  CommonResponse(this.status, this.data, this.message);

  // 从JSON数据创建实例
  factory CommonResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$CommonResponseFromJson<T>(json, fromJsonT);

  // 将实例转换为JSON数据
  Map<String, dynamic> toJson(Object? Function(T? value) toJsonT) =>
      _$CommonResponseToJson<T>(this, toJsonT);
}

class Connecter extends GetConnect {
  @override
  void onInit() {
    // 设置基础 URL
    httpClient.baseUrl = 'http://118.89.67.217:9638';
    httpClient
        .addResponseModifier<CommonResponse<dynamic>>((request, response) {
      if (response.isOk) {
        final commonResponse = response.body;
        if (commonResponse is CommonResponse) {
          switch (commonResponse.status) {
            case 0:
              break;
            default:
              throw Exception(commonResponse.message);
          }
        } else {
          throw Exception("null response body");
        }
      } else {
        throw Exception('连接失败: ${response.statusText}');
      }
    });
  }
}

class Service {
  final connecter = Connecter();

  Future<CommonResponse<T>> get<T>(String url,
      {Map<String, dynamic>? query,
      required T Function(Object? json) fromJsonT}) {
    return connecter
        .get<CommonResponse<T>>(
      url,
      query: query,
      decoder: (data) => CommonResponse<T>.fromJson(data, fromJsonT),
    )
        .then((value) {
      return value.body!;
    });
  }
}
