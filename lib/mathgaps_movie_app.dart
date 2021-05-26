import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_router.gr.dart';

class MathGapsMovieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MathGaps',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.amber,
        canvasColor: Colors.grey.shade900,
        textTheme: GoogleFonts.heeboTextTheme(),
      ),
      builder: (context, child) {
        return ExtendedNavigator<AppRouter>(
          router: AppRouter(),
          initialRoute: Routes.overviewPage,
        );
      },
    );
  }
}
