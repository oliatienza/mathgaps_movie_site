import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../data/http/fetch_trending_response.dart';
import '../injection.dart';

part 'tmdb_api_service.g.dart';

@RestApi(baseUrl: 'https://api.themoviedb.org/3/')
abstract class TmdbApiService {
  static const String tmdbApiKey = '34f87a62891cdac8a5f8fb2236ccc375';

  @factoryMethod
  static Future<TmdbApiService> getInstance() async {
    return TmdbApiService(getIt<Dio>());
  }

  factory TmdbApiService(Dio dio, {String baseUrl}) = _TmdbApiService;

  @GET('/trending/all/day')
  Future<FetchTrendingResponse> fetchTrending({
    @Query('api_key') String apiKey = '34f87a62891cdac8a5f8fb2236ccc375',
    @Query('page') int page = 1,
  });

  @GET('/movie/popular')
  Future<FetchTrendingResponse> fetchPopular({
    @Query('api_key') String apiKey = '34f87a62891cdac8a5f8fb2236ccc375',
    @Query('page') int page = 1,
  });

  @GET('/movie/top_rated')
  Future<FetchTrendingResponse> fetchTopRated({
    @Query('api_key') String apiKey = '34f87a62891cdac8a5f8fb2236ccc375',
    @Query('page') int page = 1,
  });
}
