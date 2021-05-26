import 'package:dio/dio.dart';
import 'package:dio_log/interceptor/dio_log_interceptor.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'services/tmdb_api_service.dart';

@module
abstract class FirstPartyModules {
  @lazySingleton
  @preResolve
  Future<Dio> get dio => DioInitializer.getInstance();

  @lazySingleton
  @preResolve
  Future<TmdbApiService> get restClient => TmdbApiService.getInstance();
}

class DioInitializer {
  static Future<Dio> getInstance() async {
    final Dio dio = Dio(BaseOptions(
      followRedirects: false,
      validateStatus: (int status) {
        return status >= 200 && status <= 300;
      },
      connectTimeout: 5000,
      receiveTimeout: 10000,
    ));

    if (kDebugMode || kProfileMode) {
      dio.interceptors.add(DioLogInterceptor());
      dio.interceptors.add(
        PrettyDioLogger(
          requestBody: true,
          requestHeader: true,
        ),
      );
    }
    return dio;
  }
}
