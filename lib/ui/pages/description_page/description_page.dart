import 'dart:ui';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../data/movie_model.dart';
import '../../../mathgaps_movie_theme.dart';
import '../../shared/date_text.dart';
import '../../shared/h_space.dart';
import '../../shared/mocs_container.dart';
import '../../shared/v_space.dart';
import 'widgets/movie_poster.dart';

class DescriptionPage extends StatelessWidget {
  final MovieModel movie;

  const DescriptionPage({Key key, @required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: ResponsiveBuilder(
        builder: (BuildContext context, SizingInformation sizingInformation) {
          if (sizingInformation.isMobile) {
            return MocsContainer(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color(0xff111111),
                      Colors.grey.shade900,
                    ],
                    stops: const [
                      0.4,
                      1
                    ]),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 450,
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              foregroundDecoration: const BoxDecoration(
                                color: Colors.black26,
                              ),
                              child: ExtendedImage.network(
                                movie.fullBackropUrl(),
                                height: 350,
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.cover,
                                loadStateChanged: (ExtendedImageState state) {
                                  switch (state.extendedImageLoadState) {
                                    case LoadState.loading:
                                      return null;
                                      break;
                                    case LoadState.completed:
                                      return FadeIn(
                                        duration:
                                            const Duration(milliseconds: 500),
                                        child: state.completedWidget,
                                      );
                                      break;
                                    case LoadState.failed:
                                      return ExtendedImage.network(
                                        movie.fullPosterUrlOriginalSize(),
                                        height: 350,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        fit: BoxFit.cover,
                                      );
                                      break;
                                    default:
                                      return null;
                                  }
                                },
                              ),
                            ),
                            const VSpace(100),
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: MoviePoster(height: 310, movie: movie),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(
                          (movie.title ?? movie.originalTitle ?? '')
                              .toUpperCase(),
                          style: GoogleFonts.montserrat(
                            fontSize: 36,
                            color: Colors.white,
                            height: 1,
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const VSpace(8),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.star,
                              size: 16,
                            ),
                            const HSpace(8),
                            Text(movie.voteAverage.toStringAsFixed(1),
                                style: MathGapsMovieTheme.regularWhite),
                            const HSpace(16),
                            const Icon(
                              Icons.event,
                              size: 16,
                            ),
                            const HSpace(8),
                            DateText(
                                date: movie.releaseDate,
                                dateFormat: 'MMMM yyyy',
                                style: MathGapsMovieTheme.regularWhite),
                          ],
                        ),
                        const VSpace(8),
                        Text(
                          movie.overview ?? 'No overview provided',
                          style: MathGapsMovieTheme.regularWhite,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }

          return Stack(
            children: [
              ExtendedImage.network(
                movie.fullBackropUrl(),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
                loadStateChanged: (ExtendedImageState state) {
                  switch (state.extendedImageLoadState) {
                    case LoadState.loading:
                      return null;
                      break;
                    case LoadState.completed:
                      return FadeIn(
                        duration: const Duration(milliseconds: 500),
                        child: state.completedWidget,
                      );

                      break;
                    case LoadState.failed:
                      return ExtendedImage.network(
                        movie.fullPosterUrlOriginalSize(),
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                        loadStateChanged: (ExtendedImageState state) {
                          switch (state.extendedImageLoadState) {
                            case LoadState.loading:
                              return null;
                              break;
                            case LoadState.completed:
                              return FadeIn(
                                duration: const Duration(milliseconds: 500),
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
                      );
                      break;
                    default:
                      return null;
                  }
                },
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.black26,
              ),
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: SizedBox(
                        width: 500,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              (movie.title ?? movie.originalTitle ?? '')
                                  .toUpperCase(),
                              style: GoogleFonts.montserrat(
                                fontSize: 80,
                                color: Colors.white,
                                height: 1,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Material(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(8),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  movie.overview ?? 'No overview provided',
                                  style:
                                      MathGapsMovieTheme.regularWhite.copyWith(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                            const VSpace(16),
                            Row(
                              children: [
                                Material(
                                  color: Colors.black45,
                                  borderRadius: BorderRadius.circular(8),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          size: 20,
                                        ),
                                        const HSpace(8),
                                        Text(
                                          movie.voteAverage.toStringAsFixed(1),
                                          style: MathGapsMovieTheme.regularWhite
                                              .copyWith(
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const HSpace(16),
                                Material(
                                  color: Colors.black45,
                                  borderRadius: BorderRadius.circular(8),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Icon(
                                          Icons.event,
                                          size: 20,
                                        ),
                                        const HSpace(8),
                                        DateText(
                                          date: movie.releaseDate,
                                          dateFormat: 'MMMM yyyy',
                                          style: MathGapsMovieTheme.regularWhite
                                              .copyWith(
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const HSpace(32),
                    MoviePoster(movie: movie),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
