// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommonResponse<T> _$CommonResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    CommonResponse<T>(
      (json['status'] as num).toInt(),
      fromJsonT(json['data']),
      json['message'] as String,
    );

Map<String, dynamic> _$CommonResponseToJson<T>(
  CommonResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'status': instance.status,
      'data': toJsonT(instance.data),
      'message': instance.message,
    };
