import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

part 'genre.g.dart';

//@entity
@JsonSerializable()
class Genre {

  //@primaryKey
  int id;
  String name;

  Genre({
    required this.id,
    required this.name,
  });

  factory Genre.fromJson(Map<String, dynamic> data) => _$GenreFromJson(data);

  Map<String, dynamic> toJson() => _$GenreToJson(this);
}