// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'data/movie_model.dart';
import 'ui/pages/description_page/description_page.dart';
import 'ui/pages/overview_page/overview_page.dart';

class Routes {
  static const String overviewPage = '/overview-page';
  static const String descriptionPage = '/description-page';
  static const all = <String>{
    overviewPage,
    descriptionPage,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.overviewPage, page: OverviewPage),
    RouteDef(Routes.descriptionPage, page: DescriptionPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    OverviewPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const OverviewPage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
    DescriptionPage: (data) {
      final args = data.getArgs<DescriptionPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            DescriptionPage(
          key: args.key,
          movie: args.movie,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// DescriptionPage arguments holder class
class DescriptionPageArguments {
  final Key key;
  final MovieModel movie;
  DescriptionPageArguments({this.key, @required this.movie});
}
