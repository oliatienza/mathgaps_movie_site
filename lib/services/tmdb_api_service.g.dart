// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tmdb_api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _TmdbApiService implements TmdbApiService {
  _TmdbApiService(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://api.themoviedb.org/3/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<FetchTrendingResponse> fetchTrending(
      {apiKey = '34f87a62891cdac8a5f8fb2236ccc375', page = 1}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'api_key': apiKey,
      r'page': page
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/trending/all/day',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = FetchTrendingResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<FetchTrendingResponse> fetchPopular(
      {apiKey = '34f87a62891cdac8a5f8fb2236ccc375', page = 1}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'api_key': apiKey,
      r'page': page
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/movie/popular',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = FetchTrendingResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<FetchTrendingResponse> fetchTopRated(
      {apiKey = '34f87a62891cdac8a5f8fb2236ccc375', page = 1}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'api_key': apiKey,
      r'page': page
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/movie/top_rated',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = FetchTrendingResponse.fromJson(_result.data);
    return value;
  }
}
