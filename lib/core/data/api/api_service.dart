import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:remanga/core/data/api/http_client.dart';
import 'package:remanga/core/model/response_wrapper/response_wrapper.dart';
import 'package:remanga/core/model/title/preview/title_preview.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@singleton
@RestApi(baseUrl: "https://api.remanga.org/api/")
abstract class APIService {

  @factoryMethod
  factory APIService(HttpClient client) => _APIService(client.httpClient);

  @GET("/titles/?ordering=-votes&count=30")
  Future<ResponseWrapper<List<TitlePreview>>> getTopThirtyTitles();
}