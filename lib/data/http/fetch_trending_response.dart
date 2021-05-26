import 'package:json_annotation/json_annotation.dart';

import '../movie_model.dart';

part 'fetch_trending_response.g.dart';

@JsonSerializable()
class FetchTrendingResponse {
  final int page;

  @JsonKey(name: 'results')
  final List<MovieModel> movies;

  @JsonKey(name: 'total_pages')
  final int totalPage;

  @JsonKey(name: 'total_results')
  final int totalResults;

  FetchTrendingResponse({
    this.page,
    this.movies,
    this.totalPage,
    this.totalResults,
  });

  factory FetchTrendingResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchTrendingResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FetchTrendingResponseToJson(this);
}
