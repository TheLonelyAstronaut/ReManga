import 'package:remanga/core/model/chapter/full/chapter.dart';
import 'package:remanga/core/model/title/full/title.dart';
import 'package:remanga/core/model/title/preview/title_preview.dart';

abstract class TitleRepository {
  Stream<List<TitlePreview>> getTopThirty();
  Stream<Title> getTitleInfo(String titleDir);
  Stream<Chapter> getChapterInfo(String chapterID);
}
