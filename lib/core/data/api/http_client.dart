import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class HttpClient {
  Dio _client = Dio();

  Dio get httpClient => _client;
}