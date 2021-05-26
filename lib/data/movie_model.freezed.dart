// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return _MovieModel.fromJson(json);
}

/// @nodoc
class _$MovieModelTearOff {
  const _$MovieModelTearOff();

// ignore: unused_element
  _MovieModel call(
      {@JsonKey(name: 'poster_path') String posterPath,
      bool adult,
      String overview,
      @JsonKey(name: 'release_date') DateTime releaseDate,
      @JsonKey(name: 'genre_ids') List<int> genreIds,
      int id,
      @JsonKey(name: 'original_title') String originalTitle,
      @JsonKey(name: 'original_language') String originalLanguage,
      String title,
      @JsonKey(name: 'backdrop_path') String backdropPath,
      double popularity,
      @JsonKey(name: 'vote_count') int voteCount,
      bool video,
      @JsonKey(name: 'vote_average') double voteAverage}) {
    return _MovieModel(
      posterPath: posterPath,
      adult: adult,
      overview: overview,
      releaseDate: releaseDate,
      genreIds: genreIds,
      id: id,
      originalTitle: originalTitle,
      originalLanguage: originalLanguage,
      title: title,
      backdropPath: backdropPath,
      popularity: popularity,
      voteCount: voteCount,
      video: video,
      voteAverage: voteAverage,
    );
  }

// ignore: unused_element
  MovieModel fromJson(Map<String, Object> json) {
    return MovieModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MovieModel = _$MovieModelTearOff();

/// @nodoc
mixin _$MovieModel {
  @JsonKey(name: 'poster_path')
  String get posterPath;
  bool get adult;
  String get overview;
  @JsonKey(name: 'release_date')
  DateTime get releaseDate;
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds;
  int get id;
  @JsonKey(name: 'original_title')
  String get originalTitle;
  @JsonKey(name: 'original_language')
  String get originalLanguage;
  String get title;
  @JsonKey(name: 'backdrop_path')
  String get backdropPath;
  double get popularity;
  @JsonKey(name: 'vote_count')
  int get voteCount;
  bool get video;
  @JsonKey(name: 'vote_average')
  double get voteAverage;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $MovieModelCopyWith<MovieModel> get copyWith;
}

/// @nodoc
abstract class $MovieModelCopyWith<$Res> {
  factory $MovieModelCopyWith(
          MovieModel value, $Res Function(MovieModel) then) =
      _$MovieModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'poster_path') String posterPath,
      bool adult,
      String overview,
      @JsonKey(name: 'release_date') DateTime releaseDate,
      @JsonKey(name: 'genre_ids') List<int> genreIds,
      int id,
      @JsonKey(name: 'original_title') String originalTitle,
      @JsonKey(name: 'original_language') String originalLanguage,
      String title,
      @JsonKey(name: 'backdrop_path') String backdropPath,
      double popularity,
      @JsonKey(name: 'vote_count') int voteCount,
      bool video,
      @JsonKey(name: 'vote_average') double voteAverage});
}

/// @nodoc
class _$MovieModelCopyWithImpl<$Res> implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._value, this._then);

  final MovieModel _value;
  // ignore: unused_field
  final $Res Function(MovieModel) _then;

  @override
  $Res call({
    Object posterPath = freezed,
    Object adult = freezed,
    Object overview = freezed,
    Object releaseDate = freezed,
    Object genreIds = freezed,
    Object id = freezed,
    Object originalTitle = freezed,
    Object originalLanguage = freezed,
    Object title = freezed,
    Object backdropPath = freezed,
    Object popularity = freezed,
    Object voteCount = freezed,
    Object video = freezed,
    Object voteAverage = freezed,
  }) {
    return _then(_value.copyWith(
      posterPath:
          posterPath == freezed ? _value.posterPath : posterPath as String,
      adult: adult == freezed ? _value.adult : adult as bool,
      overview: overview == freezed ? _value.overview : overview as String,
      releaseDate:
          releaseDate == freezed ? _value.releaseDate : releaseDate as DateTime,
      genreIds: genreIds == freezed ? _value.genreIds : genreIds as List<int>,
      id: id == freezed ? _value.id : id as int,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle as String,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage as String,
      title: title == freezed ? _value.title : title as String,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath as String,
      popularity:
          popularity == freezed ? _value.popularity : popularity as double,
      voteCount: voteCount == freezed ? _value.voteCount : voteCount as int,
      video: video == freezed ? _value.video : video as bool,
      voteAverage:
          voteAverage == freezed ? _value.voteAverage : voteAverage as double,
    ));
  }
}

/// @nodoc
abstract class _$MovieModelCopyWith<$Res> implements $MovieModelCopyWith<$Res> {
  factory _$MovieModelCopyWith(
          _MovieModel value, $Res Function(_MovieModel) then) =
      __$MovieModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'poster_path') String posterPath,
      bool adult,
      String overview,
      @JsonKey(name: 'release_date') DateTime releaseDate,
      @JsonKey(name: 'genre_ids') List<int> genreIds,
      int id,
      @JsonKey(name: 'original_title') String originalTitle,
      @JsonKey(name: 'original_language') String originalLanguage,
      String title,
      @JsonKey(name: 'backdrop_path') String backdropPath,
      double popularity,
      @JsonKey(name: 'vote_count') int voteCount,
      bool video,
      @JsonKey(name: 'vote_average') double voteAverage});
}

/// @nodoc
class __$MovieModelCopyWithImpl<$Res> extends _$MovieModelCopyWithImpl<$Res>
    implements _$MovieModelCopyWith<$Res> {
  __$MovieModelCopyWithImpl(
      _MovieModel _value, $Res Function(_MovieModel) _then)
      : super(_value, (v) => _then(v as _MovieModel));

  @override
  _MovieModel get _value => super._value as _MovieModel;

  @override
  $Res call({
    Object posterPath = freezed,
    Object adult = freezed,
    Object overview = freezed,
    Object releaseDate = freezed,
    Object genreIds = freezed,
    Object id = freezed,
    Object originalTitle = freezed,
    Object originalLanguage = freezed,
    Object title = freezed,
    Object backdropPath = freezed,
    Object popularity = freezed,
    Object voteCount = freezed,
    Object video = freezed,
    Object voteAverage = freezed,
  }) {
    return _then(_MovieModel(
      posterPath:
          posterPath == freezed ? _value.posterPath : posterPath as String,
      adult: adult == freezed ? _value.adult : adult as bool,
      overview: overview == freezed ? _value.overview : overview as String,
      releaseDate:
          releaseDate == freezed ? _value.releaseDate : releaseDate as DateTime,
      genreIds: genreIds == freezed ? _value.genreIds : genreIds as List<int>,
      id: id == freezed ? _value.id : id as int,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle as String,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage as String,
      title: title == freezed ? _value.title : title as String,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath as String,
      popularity:
          popularity == freezed ? _value.popularity : popularity as double,
      voteCount: voteCount == freezed ? _value.voteCount : voteCount as int,
      video: video == freezed ? _value.video : video as bool,
      voteAverage:
          voteAverage == freezed ? _value.voteAverage : voteAverage as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MovieModel implements _MovieModel {
  _$_MovieModel(
      {@JsonKey(name: 'poster_path') this.posterPath,
      this.adult,
      this.overview,
      @JsonKey(name: 'release_date') this.releaseDate,
      @JsonKey(name: 'genre_ids') this.genreIds,
      this.id,
      @JsonKey(name: 'original_title') this.originalTitle,
      @JsonKey(name: 'original_language') this.originalLanguage,
      this.title,
      @JsonKey(name: 'backdrop_path') this.backdropPath,
      this.popularity,
      @JsonKey(name: 'vote_count') this.voteCount,
      this.video,
      @JsonKey(name: 'vote_average') this.voteAverage});

  factory _$_MovieModel.fromJson(Map<String, dynamic> json) =>
      _$_$_MovieModelFromJson(json);

  @override
  @JsonKey(name: 'poster_path')
  final String posterPath;
  @override
  final bool adult;
  @override
  final String overview;
  @override
  @JsonKey(name: 'release_date')
  final DateTime releaseDate;
  @override
  @JsonKey(name: 'genre_ids')
  final List<int> genreIds;
  @override
  final int id;
  @override
  @JsonKey(name: 'original_title')
  final String originalTitle;
  @override
  @JsonKey(name: 'original_language')
  final String originalLanguage;
  @override
  final String title;
  @override
  @JsonKey(name: 'backdrop_path')
  final String backdropPath;
  @override
  final double popularity;
  @override
  @JsonKey(name: 'vote_count')
  final int voteCount;
  @override
  final bool video;
  @override
  @JsonKey(name: 'vote_average')
  final double voteAverage;

  @override
  String toString() {
    return 'MovieModel(posterPath: $posterPath, adult: $adult, overview: $overview, releaseDate: $releaseDate, genreIds: $genreIds, id: $id, originalTitle: $originalTitle, originalLanguage: $originalLanguage, title: $title, backdropPath: $backdropPath, popularity: $popularity, voteCount: $voteCount, video: $video, voteAverage: $voteAverage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieModel &&
            (identical(other.posterPath, posterPath) ||
                const DeepCollectionEquality()
                    .equals(other.posterPath, posterPath)) &&
            (identical(other.adult, adult) ||
                const DeepCollectionEquality().equals(other.adult, adult)) &&
            (identical(other.overview, overview) ||
                const DeepCollectionEquality()
                    .equals(other.overview, overview)) &&
            (identical(other.releaseDate, releaseDate) ||
                const DeepCollectionEquality()
                    .equals(other.releaseDate, releaseDate)) &&
            (identical(other.genreIds, genreIds) ||
                const DeepCollectionEquality()
                    .equals(other.genreIds, genreIds)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.originalTitle, originalTitle) ||
                const DeepCollectionEquality()
                    .equals(other.originalTitle, originalTitle)) &&
            (identical(other.originalLanguage, originalLanguage) ||
                const DeepCollectionEquality()
                    .equals(other.originalLanguage, originalLanguage)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.backdropPath, backdropPath) ||
                const DeepCollectionEquality()
                    .equals(other.backdropPath, backdropPath)) &&
            (identical(other.popularity, popularity) ||
                const DeepCollectionEquality()
                    .equals(other.popularity, popularity)) &&
            (identical(other.voteCount, voteCount) ||
                const DeepCollectionEquality()
                    .equals(other.voteCount, voteCount)) &&
            (identical(other.video, video) ||
                const DeepCollectionEquality().equals(other.video, video)) &&
            (identical(other.voteAverage, voteAverage) ||
                const DeepCollectionEquality()
                    .equals(other.voteAverage, voteAverage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(posterPath) ^
      const DeepCollectionEquality().hash(adult) ^
      const DeepCollectionEquality().hash(overview) ^
      const DeepCollectionEquality().hash(releaseDate) ^
      const DeepCollectionEquality().hash(genreIds) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(originalTitle) ^
      const DeepCollectionEquality().hash(originalLanguage) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(backdropPath) ^
      const DeepCollectionEquality().hash(popularity) ^
      const DeepCollectionEquality().hash(voteCount) ^
      const DeepCollectionEquality().hash(video) ^
      const DeepCollectionEquality().hash(voteAverage);

  @JsonKey(ignore: true)
  @override
  _$MovieModelCopyWith<_MovieModel> get copyWith =>
      __$MovieModelCopyWithImpl<_MovieModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MovieModelToJson(this);
  }
}

abstract class _MovieModel implements MovieModel {
  factory _MovieModel(
      {@JsonKey(name: 'poster_path') String posterPath,
      bool adult,
      String overview,
      @JsonKey(name: 'release_date') DateTime releaseDate,
      @JsonKey(name: 'genre_ids') List<int> genreIds,
      int id,
      @JsonKey(name: 'original_title') String originalTitle,
      @JsonKey(name: 'original_language') String originalLanguage,
      String title,
      @JsonKey(name: 'backdrop_path') String backdropPath,
      double popularity,
      @JsonKey(name: 'vote_count') int voteCount,
      bool video,
      @JsonKey(name: 'vote_average') double voteAverage}) = _$_MovieModel;

  factory _MovieModel.fromJson(Map<String, dynamic> json) =
      _$_MovieModel.fromJson;

  @override
  @JsonKey(name: 'poster_path')
  String get posterPath;
  @override
  bool get adult;
  @override
  String get overview;
  @override
  @JsonKey(name: 'release_date')
  DateTime get releaseDate;
  @override
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds;
  @override
  int get id;
  @override
  @JsonKey(name: 'original_title')
  String get originalTitle;
  @override
  @JsonKey(name: 'original_language')
  String get originalLanguage;
  @override
  String get title;
  @override
  @JsonKey(name: 'backdrop_path')
  String get backdropPath;
  @override
  double get popularity;
  @override
  @JsonKey(name: 'vote_count')
  int get voteCount;
  @override
  bool get video;
  @override
  @JsonKey(name: 'vote_average')
  double get voteAverage;
  @override
  @JsonKey(ignore: true)
  _$MovieModelCopyWith<_MovieModel> get copyWith;
}
