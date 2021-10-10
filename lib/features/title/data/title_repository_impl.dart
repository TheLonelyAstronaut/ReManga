import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:remanga/core/data/api/api_service.dart';
import 'package:remanga/core/model/response_wrapper/response_wrapper.dart';
import 'package:remanga/core/model/title/preview/title_preview.dart';
import 'package:remanga/features/title/data/title_repository.dart';
import 'package:rxdart/rxdart.dart';

@Singleton(as: TitleRepository)
class TitleRepositoryImpl extends TitleRepository {
  APIService service;

  TitleRepositoryImpl(this.service);

  @override
  Stream<List<TitlePreview>> getTopThirty() async* {
    var data = await service.getTopThirtyTitles();

    yield data.content;
  }
}
