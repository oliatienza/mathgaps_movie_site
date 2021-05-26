// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'first_party_modules.dart' as _i5;
import 'services/tmdb_api_service.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firstPartyModules = _$FirstPartyModules();
  await gh.lazySingletonAsync<_i3.Dio>(() => firstPartyModules.dio,
      preResolve: true);
  await gh.lazySingletonAsync<_i4.TmdbApiService>(
      () => firstPartyModules.restClient,
      preResolve: true);
  return get;
}

class _$FirstPartyModules extends _i5.FirstPartyModules {}
