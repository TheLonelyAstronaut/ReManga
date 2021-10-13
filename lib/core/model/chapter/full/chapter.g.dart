// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Chapter _$ChapterFromJson(Map<String, dynamic> json) => Chapter(
      id: json['id'] as int,
      tome: json['tome'] as int,
      chapter: json['chapter'] as String,
      pages: toFlatChapterList(json['pages']),
    );

Map<String, dynamic> _$ChapterToJson(Chapter instance) => <String, dynamic>{
      'id': instance.id,
      'tome': instance.tome,
      'chapter': instance.chapter,
      'pages': instance.pages,
    };
