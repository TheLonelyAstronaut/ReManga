import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:remanga/core/data/api/http_client.dart';
import 'package:remanga/core/model/chapter/full/chapter.dart';
import 'package:remanga/core/model/response_wrapper/response_wrapper.dart';
import 'package:remanga/core/model/title/full/title.dart';
import 'package:remanga/core/model/title/preview/title_preview.dart';
import 'package:retrofit/http.dart';

part 'title_service.g.dart';

@singleton
@RestApi(baseUrl: "https://api.remanga.org/api/")
abstract class TitleService {

  @factoryMethod
  factory TitleService(HttpClient client) => _TitleService(client.httpClient);

  @GET("/titles/?ordering=-votes&count=30")
  Future<ResponseWrapper<List<TitlePreview>>> getTopThirtyTitles();

  @GET("/titles/{dir}")
  Future<ResponseWrapper<Title>> getTitleInfo(@Path("dir") titleDir);

  @GET("/titles/chapters/{chapterID}")
  Future<ResponseWrapper<Chapter>> getChapterInfo(@Path("chapterID") chapterID);
}