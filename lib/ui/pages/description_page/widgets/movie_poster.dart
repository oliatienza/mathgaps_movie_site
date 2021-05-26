import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

import '../../../../data/movie_model.dart';

class MoviePoster extends StatelessWidget {
  final double height;
  final double width;
  final MovieModel movie;
  const MoviePoster({
    Key key,
    @required this.movie,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Hero(
        tag: 'Poster${movie.id}',
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: ExtendedImage.network(
            movie.fullPosterUrl(),
          ),
        ),
      ),
    );
  }
}
