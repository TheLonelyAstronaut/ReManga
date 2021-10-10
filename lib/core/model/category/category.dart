import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

//@entity
@JsonSerializable()
class Category {

  //@primaryKey
  int id;
  String name;

  Category({
    required this.id,
    required this.name,
  });

  factory Category.fromJson(Map<String, dynamic> data) => _$CategoryFromJson(data);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}