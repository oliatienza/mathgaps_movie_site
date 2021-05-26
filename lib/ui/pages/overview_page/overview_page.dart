import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import '../../../data/enums/browse_mode.dart';
import '../../../gen/assets.gen.dart';
import '../../../injection.dart';
import '../../../services/tmdb_api_service.dart';
import '../../shared/v_space.dart';
import 'overview_page_viewmodel.dart';
import 'widgets/movie_grid.dart';
import 'widgets/toggle_button_label.dart';

class OverviewPage extends ViewModelBuilderWidget<OverviewPageViewModel> {
  const OverviewPage({Key key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context, OverviewPageViewModel model, Widget child) {
    return Scaffold(
      body: ResponsiveBuilder(
        builder: (BuildContext context, SizingInformation sizingInformation) {
          return Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xff111111),
                        Colors.grey.shade900,
                      ]),
                ),
              ),
              Center(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: getValueForScreenType<double>(
                      context: context,
                      desktop: 1000,
                      mobile: MediaQuery.of(context).size.width),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 16.0,
                      left: 16,
                      right: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          Assets.png.mathgapsLogo.path,
                          height: getValueForScreenType<double>(
                            context: context,
                            desktop: 48,
                            mobile: 40,
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            height: 40,
                            child: ToggleButtons(
                              borderRadius: BorderRadius.circular(16),
                              isSelected: [
                                model.browseMode == BrowseMode.trending,
                                model.browseMode == BrowseMode.topRated,
                                model.browseMode == BrowseMode.popular,
                              ],
                              onPressed: model.onToggleButtonPressed,
                              borderColor: Colors.white,
                              selectedBorderColor: Colors.white,
                              fillColor: Colors.white,
                              selectedColor: Colors.black,
                              children: const [
                                ToggleButtonLabel(
                                  label: 'Trending',
                                ),
                                ToggleButtonLabel(
                                  label: 'Top Rated',
                                ),
                                ToggleButtonLabel(
                                  label: 'Popular',
                                ),
                              ],
                            ),
                          ),
                        ),
                        const VSpace(16),
                        Expanded(
                          child: RefreshIndicator(
                            onRefresh: model.refreshMovies,
                            child: const MovieGrid(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  OverviewPageViewModel viewModelBuilder(BuildContext context) {
    return OverviewPageViewModel(
      context: context,
      tmdbApiService: getIt<TmdbApiService>(),
    );
  }

  @override
  void onViewModelReady(OverviewPageViewModel model) {
    model.fetchTrending();
  }
}
