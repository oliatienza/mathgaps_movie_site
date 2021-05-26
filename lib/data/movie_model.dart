import 'package:freezed_annotation/freezed_annotation.dart';

import 'converters/date_time_converter.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
@DateTimeConverter()
abstract class MovieModel with _$MovieModel {
  // @HiveType(typeId: HiveTypeId.notificationPreferences, adapterName: 'MovieModelAdapter')
  factory MovieModel({
    @JsonKey(name: 'poster_path') final String posterPath,
    final bool adult,
    final String overview,
    @JsonKey(name: 'release_date') final DateTime releaseDate,
    @JsonKey(name: 'genre_ids') final List<int> genreIds,
    final int id,
    @JsonKey(name: 'original_title') final String originalTitle,
    @JsonKey(name: 'original_language') final String originalLanguage,
    final String title,
    @JsonKey(name: 'backdrop_path') final String backdropPath,
    final double popularity,
    @JsonKey(name: 'vote_count') final int voteCount,
    final bool video,
    @JsonKey(name: 'vote_average') final double voteAverage,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}

extension MovieModelX on MovieModel {
  String fullPosterUrl() {
    return 'https://image.tmdb.org/t/p/w500$posterPath';
  }

  String fullPosterUrlOriginalSize() {
    return 'https://image.tmdb.org/t/p/original$posterPath';
  }

  String fullBackropUrl() {
    // return 'https://image.tmdb.org/t/p/w500$backdropPath';
    return 'https://image.tmdb.org/t/p/original$backdropPath';
  }
}
