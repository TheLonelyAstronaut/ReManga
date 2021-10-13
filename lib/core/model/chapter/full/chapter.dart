import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:remanga/core/model/chapter_page/chapter_page.dart';
import 'package:remanga/core/utils/json_mappers.dart';

part 'chapter.g.dart';

//@entity
@JsonSerializable()
class Chapter {

  int id;

  int tome;

  String chapter;

  @JsonKey(fromJson: toFlatChapterList)
  List<ChapterPage> pages;

  Chapter({
    required this.id,
    required this.tome,
    required this.chapter,
    required this.pages
  });

  factory Chapter.fromJson(Map<String, dynamic> data) => _$ChapterFromJson(data);

  Map<String, dynamic> toJson() => _$ChapterToJson(this);
}