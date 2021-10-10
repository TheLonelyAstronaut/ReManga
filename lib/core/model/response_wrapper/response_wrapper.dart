import 'package:json_annotation/json_annotation.dart';

part 'response_wrapper.g.dart';

@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class ResponseWrapper<T> {
  String msg;
  T content;

  ResponseWrapper({
    required this.msg,
    required this.content
  });

  factory ResponseWrapper.fromJson(
      Map<String, dynamic> data,
      T Function(Object? json) fromJsonT
      ) => _$ResponseWrapperFromJson(data, fromJsonT);

  Map<String, dynamic> toJson(
      Object? Function(T value) toJsonT
      ) => _$ResponseWrapperToJson(this, toJsonT);
}