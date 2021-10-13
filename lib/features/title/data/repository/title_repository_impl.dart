import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:remanga/core/model/chapter/full/chapter.dart';
import 'package:remanga/core/model/title/full/title.dart';
import 'package:remanga/core/model/title/preview/title_preview.dart';
import 'package:remanga/features/title/data/api/title_service.dart';
import 'package:remanga/features/title/data/repository/title_repository.dart';

@Singleton(as: TitleRepository)
class TitleRepositoryImpl extends TitleRepository {
  TitleService service;

  TitleRepositoryImpl(this.service);

  @override
  Stream<List<TitlePreview>> getTopThirty() async* {
    var data = await service.getTopThirtyTitles();

    yield data.content;
  }

  @override
  Stream<Title> getTitleInfo(String titleDir) async* {
    var data = await service.getTitleInfo(titleDir);

    yield data.content;
  }

  @override
  Stream<Chapter> getChapterInfo(String chapterID) async* {
    var data = await service.getChapterInfo(chapterID);

    yield data.content;
  }
}
