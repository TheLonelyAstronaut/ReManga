// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _APIService implements APIService {
  _APIService(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.remanga.org/api/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ResponseWrapper<List<TitlePreview>>> getTopThirtyTitles() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponseWrapper<List<TitlePreview>>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/titles/?ordering=-votes&count=30',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseWrapper<List<TitlePreview>>.fromJson(
        _result.data!,
        (json) => (json as List<dynamic>)
            .map<TitlePreview>(
                (i) => TitlePreview.fromJson(i as Map<String, dynamic>))
            .toList());
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
