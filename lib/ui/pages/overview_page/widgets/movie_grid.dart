import 'package:flutter/material.dart';
import 'package:infinite_widgets/infinite_widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import '../overview_page_viewmodel.dart';
import 'movie_cell.dart';

class MovieGrid extends ViewModelWidget<OverviewPageViewModel> {
  const MovieGrid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, OverviewPageViewModel viewModel) {
    return InfiniteGridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:
            getValueForScreenType<int>(context: context, desktop: 4, mobile: 2),
        childAspectRatio: 0.67,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        return InkWell(
            onTap: () {
              viewModel.navigateToDescription(index);
            },
            child: MovieCell(movie: viewModel.movies[index]));
      },
      itemCount: viewModel.movies.length, // Current itemCount you have
      hasNext: viewModel.movies.length <
          100, // let the widget know if you have more data to show or not
      nextData: viewModel
          .loadMore, // callback called when end to the list is reach and hasNext is true
    );
  }
}
