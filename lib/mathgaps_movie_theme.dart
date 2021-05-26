import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utils/theme_utils.dart';

mixin MathGapsMovieTheme {
  static const Color primaryLightGradientShadeColor = Color(0xff00f7ff);
  static const Color primaryColor = Color(0xff04b8be);
  static const Color primaryDarkColor = Color(0xff017b8c);
  static const Color accentColor = Color(0xfffcb009);
  static const Color accentLightColor = Color(0xfffef2e8);
  static const Color secondaryColor = Color(0xffffa4a4);
  static const Color secondaryDarkColor = Color(0xff8F0000);
  static const Color colorBlack = Color(0xff333333);

  static MaterialColor primaryMaterialColor =
      ThemeUtils.createMaterialColorFromShade500(primaryColor);
  static MaterialColor primaryDarkMaterialColor =
      ThemeUtils.createMaterialColorFromShade500(primaryDarkColor);
  static MaterialColor accentMaterialColor =
      ThemeUtils.createMaterialColorFromShade500(accentColor);
  static MaterialColor accentLightMaterialColor =
      ThemeUtils.createMaterialColorFromShade500(accentLightColor);
  static MaterialColor secondaryMaterialColor =
      ThemeUtils.createMaterialColorFromShade500(secondaryColor);
  static MaterialColor secondaryDarkMaterialColor =
      ThemeUtils.createMaterialColorFromShade500(secondaryDarkColor);

  static const TextStyle hintText = TextStyle(color: Colors.grey);
  static const TextStyle darkHintText = TextStyle(color: Colors.white70);

  // @ Title
  static const TextStyle dialogTitleStyle = TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: 18,
    fontFamily: 'Nunito',
    color: MathGapsMovieTheme.colorBlack,
  );

  // @ Regular
  static final TextStyle regular13 = GoogleFonts.nunito(
    fontSize: 13,
    color: colorBlack,
  );
  static final TextStyle regular = GoogleFonts.nunito(
    fontSize: 14,
    color: colorBlack,
  );

  static final TextStyle regularWhite = GoogleFonts.nunito(
    fontSize: 14,
    color: Colors.white,
  );

  // @ Regular Primary Color
  static const TextStyle regularPrimaryColor = TextStyle(
    color: primaryColor,
  );

  // @ Italicized
  static const TextStyle italicized = TextStyle(
    fontStyle: FontStyle.italic,
  );

  static const TextStyle italicizedPrimaryColor = TextStyle(
    fontStyle: FontStyle.italic,
    color: primaryColor,
  );

  // @ Regular Grey
  static const TextStyle regularGrey11 = TextStyle(
    color: Colors.grey,
    fontSize: 11,
  );

  static const TextStyle regularGrey12 = TextStyle(
    color: Colors.grey,
    fontSize: 12,
  );

  static const TextStyle regularGrey13 = TextStyle(
    color: Colors.grey,
    fontSize: 13,
  );

  static const TextStyle regularGrey = TextStyle(
    color: Colors.grey,
  );

  // @ Bold Grey
  static const TextStyle boldGrey11 = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.grey,
    fontSize: 11,
  );

  static const TextStyle boldGrey12 = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.grey,
    fontSize: 12,
  );

  static const TextStyle boldGrey = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.grey,
  );

  static const TextStyle boldGrey16 = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.grey,
    fontSize: 16,
  );

  static const TextStyle boldGrey18 = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.grey,
    fontSize: 18,
  );

  static const TextStyle boldGrey20 = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.grey,
    fontSize: 20,
  );

  static const TextStyle boldGrey22 = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.grey,
    fontSize: 22,
  );

  static const TextStyle boldGrey24 = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.grey,
    fontSize: 24,
  );

  static const TextStyle boldGrey12Spacing1 = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.grey,
    fontSize: 12,
    letterSpacing: 1,
  );

  static const TextStyle boldGreySpacing1 = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.grey,
    letterSpacing: 1,
  );

  // @ Bold
  static const TextStyle bold12 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 12,
  );

  static const TextStyle bold = TextStyle(
    fontWeight: FontWeight.bold,
  );

  static const TextStyle bold14 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );

  static const TextStyle bold16 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );
  static const TextStyle bold18 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );
  static const TextStyle bold20 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
  static const TextStyle bold22 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 22,
  );
  static const TextStyle bold24 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24,
  );

  static const TextStyle boldItalicized = TextStyle(
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
  );

  // @ Bold Primary Color
  static const TextStyle boldPrimaryColor12 = TextStyle(
    fontWeight: FontWeight.bold,
    color: primaryColor,
    fontSize: 12,
  );
  static const TextStyle boldPrimaryColor13 = TextStyle(
    fontWeight: FontWeight.bold,
    color: primaryColor,
    fontSize: 13,
  );
  static const TextStyle boldPrimaryColor = TextStyle(
    fontWeight: FontWeight.bold,
    color: primaryColor,
  );
  static const TextStyle boldPrimaryColor16 = TextStyle(
    fontWeight: FontWeight.bold,
    color: primaryColor,
    fontSize: 16,
  );
  static const TextStyle boldPrimaryColor18 = TextStyle(
    fontWeight: FontWeight.bold,
    color: primaryColor,
    fontSize: 18,
  );
  static const TextStyle boldPrimaryColor20 = TextStyle(
    fontWeight: FontWeight.bold,
    color: primaryColor,
    fontSize: 20,
  );
  static const TextStyle boldPrimaryColor22 = TextStyle(
    fontWeight: FontWeight.bold,
    color: primaryColor,
    fontSize: 22,
  );
  static const TextStyle boldPrimaryColor24 = TextStyle(
    fontWeight: FontWeight.bold,
    color: primaryColor,
    fontSize: 24,
  );

  static const TextStyle boldPrimaryColorUnderlined = TextStyle(
    fontWeight: FontWeight.bold,
    color: primaryColor,
    decoration: TextDecoration.underline,
  );

  // @ Bold Accent Color
  static const TextStyle boldAccentColor12 = TextStyle(
    fontWeight: FontWeight.bold,
    color: accentColor,
    fontSize: 12,
  );
  static const TextStyle boldAccentColor = TextStyle(
    fontWeight: FontWeight.bold,
    color: accentColor,
  );
  static const TextStyle boldAccentColor16 = TextStyle(
    fontWeight: FontWeight.bold,
    color: accentColor,
    fontSize: 16,
  );
  static const TextStyle boldAccentColor18 = TextStyle(
    fontWeight: FontWeight.bold,
    color: accentColor,
    fontSize: 18,
  );
  static const TextStyle boldAccentColor20 = TextStyle(
    fontWeight: FontWeight.bold,
    color: accentColor,
    fontSize: 20,
  );
  static const TextStyle boldAccentColor22 = TextStyle(
    fontWeight: FontWeight.bold,
    color: accentColor,
    fontSize: 22,
  );
  static const TextStyle boldAccentColor24 = TextStyle(
    fontWeight: FontWeight.bold,
    color: primaryColor,
    fontSize: 24,
  );

  // @ Bold White
  static const TextStyle boldWhite12 = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontSize: 12,
  );

  static const TextStyle boldWhite = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle boldWhite16 = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontSize: 16,
  );

  static const TextStyle boldWhite18 = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontSize: 18,
  );

  static const TextStyle boldWhite20 = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontSize: 20,
  );

  static const TextStyle boldItalicizedWhite = TextStyle(
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
    color: Colors.white,
  );

  static const TextStyle boldWhiteUnderlined = TextStyle(
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
    color: Colors.white,
  );

  // @ Extra-bold
  static const TextStyle extraBold = TextStyle(
    fontWeight: FontWeight.w800,
  );
  static const TextStyle extraBold16 = TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: 16,
  );
  static const TextStyle extraBold18 = TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: 18,
  );
  static const TextStyle extraBold20 = TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: 20,
  );
  static const TextStyle extraBold22 = TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: 22,
  );
  static const TextStyle extraBold24 = TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: 24,
  );
  static const TextStyle extraBold26 = TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: 26,
  );

  // @ Extra-bold Italic
  static const TextStyle extraBoldItalic = TextStyle(
    fontWeight: FontWeight.w800,
    fontStyle: FontStyle.italic,
  );
  static const TextStyle extraBoldItalic16 = TextStyle(
    fontWeight: FontWeight.w800,
    fontStyle: FontStyle.italic,
    fontSize: 16,
  );
  static const TextStyle extraBoldItalic18 = TextStyle(
    fontWeight: FontWeight.w800,
    fontStyle: FontStyle.italic,
    fontSize: 18,
  );
  static const TextStyle extraBoldItalic20 = TextStyle(
    fontWeight: FontWeight.w800,
    fontStyle: FontStyle.italic,
    fontSize: 20,
  );
  static const TextStyle extraBoldItalic22 = TextStyle(
    fontWeight: FontWeight.w800,
    fontStyle: FontStyle.italic,
    fontSize: 22,
  );
  static const TextStyle extraBoldItalic24 = TextStyle(
    fontWeight: FontWeight.w800,
    fontStyle: FontStyle.italic,
    fontSize: 24,
  );
  static const TextStyle extraBoldItalic26 = TextStyle(
    fontWeight: FontWeight.w800,
    fontStyle: FontStyle.italic,
    fontSize: 26,
  );

  // @ Black
  static const TextStyle black = TextStyle(
    fontWeight: FontWeight.w900,
  );
  static const TextStyle black16 = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 16,
  );
  static const TextStyle black18 = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 18,
  );
  static const TextStyle black20 = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 20,
  );
  static const TextStyle black22 = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 22,
  );
  static const TextStyle black24 = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 24,
  );
  static const TextStyle black26 = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 26,
  );

  // @ Black Italic
  static const TextStyle blackItalic = TextStyle(
    fontWeight: FontWeight.w900,
    fontStyle: FontStyle.italic,
  );
  static const TextStyle blackItalic16 = TextStyle(
    fontWeight: FontWeight.w900,
    fontStyle: FontStyle.italic,
    fontSize: 16,
  );
  static const TextStyle blackItalic18 = TextStyle(
    fontWeight: FontWeight.w900,
    fontStyle: FontStyle.italic,
    fontSize: 18,
  );
  static const TextStyle blackItalic20 = TextStyle(
    fontWeight: FontWeight.w900,
    fontStyle: FontStyle.italic,
    fontSize: 20,
  );
  static const TextStyle blackItalic22 = TextStyle(
    fontWeight: FontWeight.w900,
    fontStyle: FontStyle.italic,
    fontSize: 22,
  );
  static const TextStyle blackItalic24 = TextStyle(
    fontWeight: FontWeight.w900,
    fontStyle: FontStyle.italic,
    fontSize: 24,
  );
  static const TextStyle blackItalic26 = TextStyle(
    fontWeight: FontWeight.w900,
    fontStyle: FontStyle.italic,
    fontSize: 26,
  );

  // @ Bold Secondary
  static const TextStyle boldSecondaryColor11 = TextStyle(
    fontWeight: FontWeight.bold,
    color: secondaryColor,
    fontSize: 11,
  );

  static const TextStyle boldSecondaryColor12 = TextStyle(
    fontWeight: FontWeight.bold,
    color: secondaryColor,
    fontSize: 12,
  );

  static const TextStyle boldSecondaryColor = TextStyle(
    fontWeight: FontWeight.bold,
    color: secondaryColor,
  );

  static const TextStyle boldSecondaryColor16 = TextStyle(
    fontWeight: FontWeight.bold,
    color: secondaryColor,
    fontSize: 16,
  );

  static const TextStyle boldSecondaryColor18 = TextStyle(
    fontWeight: FontWeight.bold,
    color: secondaryColor,
    fontSize: 18,
  );

  static const TextStyle boldSecondaryColor20 = TextStyle(
    fontWeight: FontWeight.bold,
    color: secondaryColor,
    fontSize: 20,
  );

  static const TextStyle boldSecondaryColor22 = TextStyle(
    fontWeight: FontWeight.bold,
    color: secondaryColor,
    fontSize: 22,
  );

  static const TextStyle boldSecondaryColor24 = TextStyle(
    fontWeight: FontWeight.bold,
    color: secondaryColor,
    fontSize: 24,
  );

  static const TextStyle boldSecondaryColor12Spacing1 = TextStyle(
    fontWeight: FontWeight.bold,
    color: secondaryColor,
    fontSize: 12,
    letterSpacing: 1,
  );

  static const TextStyle boldSecondaryColorSpacing1 = TextStyle(
    fontWeight: FontWeight.bold,
    color: secondaryColor,
    letterSpacing: 1,
  );

  // @ Regular Secondary Color
  static const TextStyle regularSecondaryColor11 = TextStyle(
    color: secondaryColor,
    fontSize: 11,
  );

  static const TextStyle regularSecondaryColor12 = TextStyle(
    color: secondaryColor,
    fontSize: 12,
  );

  static const TextStyle regularSecondaryColor = TextStyle(
    color: secondaryColor,
  );

  static const TextStyle regularSecondaryColor16 = TextStyle(
    color: secondaryColor,
    fontSize: 16,
  );

  static const TextStyle regularSecondaryColor18 = TextStyle(
    color: secondaryColor,
    fontSize: 18,
  );

  static const TextStyle regularSecondaryColor20 = TextStyle(
    color: secondaryColor,
    fontSize: 20,
  );

  static const TextStyle regularSecondaryColor22 = TextStyle(
    color: secondaryColor,
    fontSize: 22,
  );

  static const TextStyle regularSecondaryColor24 = TextStyle(
    color: secondaryColor,
    fontSize: 24,
  );

  // @ Bold Secondary Dark
  static const TextStyle boldSecondaryDarkColor11 = TextStyle(
    fontWeight: FontWeight.bold,
    color: secondaryDarkColor,
    fontSize: 11,
  );

  static const TextStyle boldSecondaryDarkColor12 = TextStyle(
    fontWeight: FontWeight.bold,
    color: secondaryDarkColor,
    fontSize: 12,
  );

  static const TextStyle boldSecondaryDarkColor = TextStyle(
    fontWeight: FontWeight.bold,
    color: secondaryDarkColor,
  );

  static const TextStyle boldSecondaryDarkColor16 = TextStyle(
    fontWeight: FontWeight.bold,
    color: secondaryDarkColor,
    fontSize: 16,
  );

  static const TextStyle boldSecondaryDarkColor18 = TextStyle(
    fontWeight: FontWeight.bold,
    color: secondaryDarkColor,
    fontSize: 18,
  );

  static const TextStyle boldSecondaryDarkColor20 = TextStyle(
    fontWeight: FontWeight.bold,
    color: secondaryDarkColor,
    fontSize: 20,
  );

  static const TextStyle boldSecondaryDarkColor22 = TextStyle(
    fontWeight: FontWeight.bold,
    color: secondaryDarkColor,
    fontSize: 22,
  );

  static const TextStyle boldSecondaryDarkColor24 = TextStyle(
    fontWeight: FontWeight.bold,
    color: secondaryDarkColor,
    fontSize: 24,
  );

  // @ Bold Accent Light
  static const TextStyle boldAccentLight11 = TextStyle(
    fontWeight: FontWeight.bold,
    color: accentLightColor,
    fontSize: 11,
  );

  static const TextStyle boldAccentLight12 = TextStyle(
    fontWeight: FontWeight.bold,
    color: accentLightColor,
    fontSize: 12,
  );

  static const TextStyle boldAccentLight = TextStyle(
    fontWeight: FontWeight.bold,
    color: accentLightColor,
  );

  static const TextStyle boldAccentLight16 = TextStyle(
    fontWeight: FontWeight.bold,
    color: accentLightColor,
    fontSize: 16,
  );

  static const TextStyle boldAccentLight18 = TextStyle(
    fontWeight: FontWeight.bold,
    color: accentLightColor,
    fontSize: 18,
  );

  static const TextStyle boldAccentLight20 = TextStyle(
    fontWeight: FontWeight.bold,
    color: accentLightColor,
    fontSize: 20,
  );

  static const TextStyle boldAccentLight22 = TextStyle(
    fontWeight: FontWeight.bold,
    color: accentLightColor,
    fontSize: 22,
  );

  static const TextStyle boldAccentLight24 = TextStyle(
    fontWeight: FontWeight.bold,
    color: accentLightColor,
    fontSize: 24,
  );

  static const TextStyle boldAccentLight12Spacing1 = TextStyle(
    fontWeight: FontWeight.bold,
    color: accentLightColor,
    fontSize: 12,
    letterSpacing: 1,
  );

  static const TextStyle boldAccentLightSpacing1 = TextStyle(
    fontWeight: FontWeight.bold,
    color: accentLightColor,
    letterSpacing: 1,
  );
}

// mixin PetamareDarkTheme {
//   static const Color red = Color(0xffCC0A2A);
//   static const Color canvas = Color(0xff121212);

//   static MaterialColor redMaterialColor = ThemeUtils.createMaterialColorFromShade500(red);

//   static TextStyle hintText = TextStyle(color: Colors.grey.shade800);
// }
