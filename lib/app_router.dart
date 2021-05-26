import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';

import 'ui/pages/description_page/description_page.dart';
import 'ui/pages/overview_page/overview_page.dart';

@CustomAutoRouter(routes: <AutoRoute>[
  CustomRoute(
      page: OverviewPage, transitionsBuilder: TransitionsBuilders.fadeIn),
  CustomRoute(
      page: DescriptionPage, transitionsBuilder: TransitionsBuilders.fadeIn),
])
class $AppRouter {}
