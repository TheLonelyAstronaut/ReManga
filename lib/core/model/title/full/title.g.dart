// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'title.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Title _$TitleFromJson(Map<String, dynamic> json) => Title(
      id: json['id'] as int,
      enName: json['en_name'] as String,
      rusName: json['rus_name'] as String,
      dir: json['dir'] as String,
      isLicensed: json['is_licensed'] as bool,
      issueYear: json['issue_year'] as int,
      avgRating: json['avg_rating'] as String,
      adminRating: json['admin_rating'] as String,
      totalViews: json['total_views'] as int,
      totalVotes: json['total_votes'] as int,
      genres: (json['genres'] as List<dynamic>)
          .map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
      img: ImageModel.fromJson(json['img'] as Map<String, dynamic>),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      ageLimit: json['age_limit'] as int,
      anotherName: json['another_name'] as String,
      countBookmarks: json['count_bookmarks'] as int,
      countChapters: json['count_chapters'] as int,
      countRating: json['count_rating'] as int,
      description: json['description'] as String,
      continueReading: json['continue_reading'] == null
          ? null
          : ChapterPreview.fromJson(
              json['continue_reading'] as Map<String, dynamic>),
      firstChapter: json['first_chapter'] == null
          ? null
          : ChapterPreview.fromJson(
              json['first_chapter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TitleToJson(Title instance) => <String, dynamic>{
      'id': instance.id,
      'img': instance.img.toJson(),
      'en_name': instance.enName,
      'rus_name': instance.rusName,
      'another_name': instance.anotherName,
      'dir': instance.dir,
      'description': instance.description,
      'issue_year': instance.issueYear,
      'avg_rating': instance.avgRating,
      'admin_rating': instance.adminRating,
      'count_rating': instance.countRating,
      'age_limit': instance.ageLimit,
      'count_bookmarks': instance.countBookmarks,
      'total_votes': instance.totalVotes,
      'total_views': instance.totalViews,
      'genres': instance.genres.map((e) => e.toJson()).toList(),
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'count_chapters': instance.countChapters,
      'first_chapter': instance.firstChapter?.toJson(),
      'continue_reading': instance.continueReading?.toJson(),
      'is_licensed': instance.isLicensed,
    };
