import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chapter_preview.g.dart';

//@entity
@JsonSerializable()
class ChapterPreview {
  int id;
  int tome;
  String chapter;

  ChapterPreview({
    required this.id,
    required this.tome,
    required this.chapter
  });

  factory ChapterPreview.fromJson(Map<String, dynamic> data) => _$ChapterPreviewFromJson(data);

  Map<String, dynamic> toJson() => _$ChapterPreviewToJson(this);
}