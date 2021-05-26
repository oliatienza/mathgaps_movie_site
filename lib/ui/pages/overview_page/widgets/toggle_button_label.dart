import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ToggleButtonLabel extends StatelessWidget {
  final String label;
  const ToggleButtonLabel({Key key, @required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ResponsiveBuilder(
        builder: (BuildContext context, SizingInformation sizingInformation) {
          return Text(
            label,
            style: GoogleFonts.heebo(
              fontSize: sizingInformation.isDesktop ? 14 : 12,
            ),
          );
        },
      ),
    );
  }
}
