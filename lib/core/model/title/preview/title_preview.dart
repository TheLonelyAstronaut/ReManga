import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:remanga/core/model/genre/genre.dart';
import 'package:remanga/core/model/image/image_model.dart';
import 'package:remanga/core/model/category/category.dart';

part 'title_preview.g.dart';

//@entity
@JsonSerializable(explicitToJson: true)
class TitlePreview {

  //@primaryKey
  int id;

  @JsonKey(name: "en_name")
  String enName;

  @JsonKey(name: "rus_name")
  String rusName;

  String dir;

  @JsonKey(name: "is_licensed")
  bool isLicensed;

  @JsonKey(name: "issue_year")
  int issueYear;

  @JsonKey(name: "avg_rating")
  String avgRating;

  @JsonKey(name: "admin_rating")
  String adminRating;

  String type;

  @JsonKey(name: "total_views")
  int totalViews;

  @JsonKey(name: "total_votes")
  int totalVotes;
  // idk why they are exists, exact same images located inside ImageModel
  // String coverHigh;
  // String coverMid;
  // String coverLow;
  @JsonKey(name: "bookmark_type")
  int? bookmarkType;

  List<Genre> genres;

  ImageModel img;

  List<Category>? categories;

  TitlePreview({
    required this.id,
    required this.enName,
    required this.rusName,
    required this.dir,
    required this.isLicensed,
    required this.issueYear,
    required this.avgRating,
    required this.adminRating,
    required this.type,
    required this.totalViews,
    required this.totalVotes,
    // required this.coverHigh,
    // required this.coverMid,
    // required this.coverLow,
    required this.bookmarkType,
    required this.genres,
    required this.img,
    required this.categories
  });

  factory TitlePreview.fromJson(Map<String, dynamic> data) => _$TitlePreviewFromJson(data);

  Map<String, dynamic> toJson() => _$TitlePreviewToJson(this);
}
