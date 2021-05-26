import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fadein/flutter_fadein.dart';

import '../../../../data/movie_model.dart';
import '../../../../mathgaps_movie_theme.dart';

class MovieCell extends StatelessWidget {
  final MovieModel movie;

  const MovieCell({Key key, @required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          SizedBox.expand(
            child: Hero(
              tag: 'Poster${movie.id}',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: ExtendedImage.network(
                  movie.fullPosterUrl(),
                  fit: BoxFit.cover,
                  loadStateChanged: (ExtendedImageState state) {
                    switch (state.extendedImageLoadState) {
                      case LoadState.loading:
                        return null;
                        break;
                      case LoadState.completed:
                        return FadeIn(
                          child: state.completedWidget,
                        );
                        break;
                      case LoadState.failed:
                        return null;
                        break;
                      default:
                        return null;
                    }
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: Colors.black45,
              borderRadius: BorderRadius.circular(8),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  movie.voteAverage.toStringAsFixed(1),
                  style: MathGapsMovieTheme.boldWhite12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
