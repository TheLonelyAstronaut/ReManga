import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

part 'image_model.g.dart';

//@entity
@JsonSerializable()
class ImageModel {
  String high;
  String mid;
  String low;

  ImageModel({
    required this.high,
    required this.mid,
    required this.low
  });

  factory ImageModel.fromJson(Map<String, dynamic> data) => _$ImageModelFromJson(data);

  Map<String, dynamic> toJson() => _$ImageModelToJson(this);
}