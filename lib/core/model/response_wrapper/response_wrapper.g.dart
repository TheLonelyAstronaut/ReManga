// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseWrapper<T> _$ResponseWrapperFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ResponseWrapper<T>(
      msg: json['msg'] as String,
      content: fromJsonT(json['content']),
    );

Map<String, dynamic> _$ResponseWrapperToJson<T>(
  ResponseWrapper<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'msg': instance.msg,
      'content': toJsonT(instance.content),
    };
