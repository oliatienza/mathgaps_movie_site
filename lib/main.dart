import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'injection.dart';
import 'mathgaps_movie_app.dart';

Future<void> main() async {
  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    const ScreenBreakpoints(desktop: 800, tablet: 550, watch: 200),
  );
  await configure();

  runApp(MathGapsMovieApp());
}
