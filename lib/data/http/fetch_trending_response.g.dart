// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_trending_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchTrendingResponse _$FetchTrendingResponseFromJson(
    Map<String, dynamic> json) {
  return FetchTrendingResponse(
    page: json['page'] as int,
    movies: (json['results'] as List)
        ?.map((e) =>
            e == null ? null : MovieModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    totalPage: json['total_pages'] as int,
    totalResults: json['total_results'] as int,
  );
}

Map<String, dynamic> _$FetchTrendingResponseToJson(
        FetchTrendingResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.movies,
      'total_pages': instance.totalPage,
      'total_results': instance.totalResults,
    };
