// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChapterPage _$ChapterPageFromJson(Map<String, dynamic> json) => ChapterPage(
      id: json['id'] as int,
      page: json['page'] as int,
      link: json['link'] as String,
      height: json['height'] as int,
      width: json['width'] as int,
      countComments: json['count_comments'] as int,
    );

Map<String, dynamic> _$ChapterPageToJson(ChapterPage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'page': instance.page,
      'link': instance.link,
      'height': instance.height,
      'width': instance.width,
      'count_comments': instance.countComments,
    };
