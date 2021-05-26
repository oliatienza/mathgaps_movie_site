import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:stacked/stacked.dart';

import '../../../app_router.gr.dart';
import '../../../data/enums/browse_mode.dart';
import '../../../data/movie_model.dart';
import '../../../services/tmdb_api_service.dart';

class OverviewPageViewModel extends BaseViewModel {
  final Logger log = Logger('OverviewPageViewModel');

  final BuildContext context;
  final TmdbApiService tmdbApiService;

  OverviewPageViewModel({
    @required this.context,
    @required this.tmdbApiService,
  });

  final List<MovieModel> movies = [];
  BrowseMode browseMode = BrowseMode.trending;
  int page = 1;

  Future<void> fetchTrending({bool shouldRefresh = false}) async {
    try {
      movies.addAll((await tmdbApiService.fetchTrending(page: page)).movies);
      page++;

      notifyListeners();
    } catch (e, s) {
      log.severe(e.toString());
      log.severe(s.toString());
    }
  }

  Future<void> fetchTopRated({bool shouldRefresh = false}) async {
    try {
      movies.addAll((await tmdbApiService.fetchTopRated(page: page)).movies);
      page++;

      notifyListeners();
    } catch (e, s) {
      log.severe(e.toString());
      log.severe(s.toString());
    }
  }

  Future<void> fetchPopular({bool shouldRefresh = false}) async {
    try {
      movies.addAll((await tmdbApiService.fetchPopular(page: page)).movies);
      page++;

      notifyListeners();
    } catch (e, s) {
      log.severe(e.toString());
      log.severe(s.toString());
    }
  }

  Future<void> navigateToDescription(int index) async {
    await Navigator.of(context).pushNamed(
      Routes.descriptionPage,
      arguments: DescriptionPageArguments(movie: movies[index]),
    );
  }

  Future<void> loadMore() async {
    switch (browseMode) {
      case BrowseMode.trending:
        fetchTrending();
        break;
      case BrowseMode.topRated:
        fetchTopRated();
        break;
      case BrowseMode.popular:
        fetchPopular();
        break;
      default:
        break;
    }
  }

  Future<void> refreshMovies() async {
    movies.clear();
    page = 1;
    notifyListeners();

    await loadMore();
  }

  void onToggleButtonPressed(int index) {
    browseMode = BrowseMode.values[index];

    refreshMovies();
  }
}
