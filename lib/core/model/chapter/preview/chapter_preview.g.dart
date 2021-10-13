// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChapterPreview _$ChapterPreviewFromJson(Map<String, dynamic> json) =>
    ChapterPreview(
      id: json['id'] as int,
      tome: json['tome'] as int,
      chapter: json['chapter'] as String,
    );

Map<String, dynamic> _$ChapterPreviewToJson(ChapterPreview instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tome': instance.tome,
      'chapter': instance.chapter,
    };
