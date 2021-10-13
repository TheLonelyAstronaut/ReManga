import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chapter_page.g.dart';

//@entity
@JsonSerializable()
class ChapterPage {

  int id;

  int page;

  String link;

  int height;

  int width;

  @JsonKey(name: "count_comments")
  int countComments;

  ChapterPage({
    required this.id,
    required this.page,
    required this.link,
    required this.height,
    required this.width,
    required this.countComments
  });

  factory ChapterPage.fromJson(Map<String, dynamic> data) => _$ChapterPageFromJson(data);

  Map<String, dynamic> toJson() => _$ChapterPageToJson(this);
}