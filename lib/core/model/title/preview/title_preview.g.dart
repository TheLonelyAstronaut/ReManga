// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'title_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TitlePreview _$TitlePreviewFromJson(Map<String, dynamic> json) => TitlePreview(
      id: json['id'] as int,
      enName: json['en_name'] as String,
      rusName: json['rus_name'] as String,
      dir: json['dir'] as String,
      isLicensed: json['is_licensed'] as bool,
      issueYear: json['issue_year'] as int,
      avgRating: json['avg_rating'] as String,
      adminRating: json['admin_rating'] as String,
      type: json['type'] as String,
      totalViews: json['total_views'] as int,
      totalVotes: json['total_votes'] as int,
      bookmarkType: json['bookmark_type'] as int?,
      genres: (json['genres'] as List<dynamic>)
          .map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
      img: ImageModel.fromJson(json['img'] as Map<String, dynamic>),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TitlePreviewToJson(TitlePreview instance) =>
    <String, dynamic>{
      'id': instance.id,
      'en_name': instance.enName,
      'rus_name': instance.rusName,
      'dir': instance.dir,
      'is_licensed': instance.isLicensed,
      'issue_year': instance.issueYear,
      'avg_rating': instance.avgRating,
      'admin_rating': instance.adminRating,
      'type': instance.type,
      'total_views': instance.totalViews,
      'total_votes': instance.totalVotes,
      'bookmark_type': instance.bookmarkType,
      'genres': instance.genres.map((e) => e.toJson()).toList(),
      'img': instance.img.toJson(),
      'categories': instance.categories?.map((e) => e.toJson()).toList(),
    };
