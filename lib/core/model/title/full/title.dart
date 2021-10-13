import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:remanga/core/model/category/category.dart';
import 'package:remanga/core/model/chapter/preview/chapter_preview.dart';
import 'package:remanga/core/model/genre/genre.dart';
import 'package:remanga/core/model/image/image_model.dart';

part 'title.g.dart';

@JsonSerializable(explicitToJson: true)
class Title {
  int id;

  ImageModel img;

  @JsonKey(name: "en_name")
  String enName;

  @JsonKey(name: "rus_name")
  String rusName;

  @JsonKey(name: "another_name")
  String anotherName;

  String dir;

  String description;

  @JsonKey(name: "issue_year")
  int issueYear;

  @JsonKey(name: "avg_rating")
  String avgRating;

  @JsonKey(name: "admin_rating")
  String adminRating;

  @JsonKey(name: "count_rating")
  int countRating;

  @JsonKey(name: "age_limit")
  int ageLimit;

  // Status

  @JsonKey(name: "count_bookmarks")
  int countBookmarks;

  @JsonKey(name: "total_votes")
  int totalVotes;

  @JsonKey(name: "total_views")
  int totalViews;

  // Type

  @JsonKey(name: "genres")
  List<Genre> genres;

  @JsonKey(name: "categories")
  List<Category> categories;

  // Publishers

  // Bookmark Type

  // Branches

  @JsonKey(name: "count_chapters")
  int countChapters;

  @JsonKey(name: "first_chapter")
  ChapterPreview? firstChapter;

  @JsonKey(name: "continue_reading")
  ChapterPreview? continueReading;

  @JsonKey(name: "is_licensed")
  bool isLicensed;

  // Newlate ID

  // Newlate title

  // Related

  // Uploaded

  // Props

  Title({
    required this.id,
    required this.enName,
    required this.rusName,
    required this.dir,
    required this.isLicensed,
    required this.issueYear,
    required this.avgRating,
    required this.adminRating,
    // required this.type,
    required this.totalViews,
    required this.totalVotes,
    // required this.bookmarkType,
    required this.genres,
    required this.img,
    required this.categories,
    required this.ageLimit,
    required this.anotherName,
    required this.countBookmarks,
    required this.countChapters,
    required this.countRating,
    required this.description,
    this.continueReading,
    this.firstChapter
  });

  factory Title.fromJson(Map<String, dynamic> data) => _$TitleFromJson(data);

  Map<String, dynamic> toJson() => _$TitleToJson(this);
}