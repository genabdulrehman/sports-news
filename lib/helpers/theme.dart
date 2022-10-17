// Light Mode
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

ThemeData themeData(BuildContext context) {
  return ThemeData(
    appBarTheme: AppBarTheme(color: Colors.transparent, elevation: 0),
    primaryColor: kPrimaryLightColor,
    primaryColorDark: kPrimaryDarkColor,
    buttonColor: kPrimaryLightColor,
    errorColor: kErrorLightColor,
    primarySwatch: Colors.green,
    accentColor: kBackgroundDarkColor,
    hintColor: kFontSecondaryLightColor,
    cardColor: kCardLightColor,
    brightness: Brightness.light,
    textSelectionTheme: TextSelectionThemeData(cursorColor: kPrimaryLightColor),
    unselectedWidgetColor: kUnselectedLightColor,
    scaffoldBackgroundColor: kBackgroundLightColor,
    backgroundColor: kBackgroundLightColor,
    iconTheme: IconThemeData(color: kBackgroundDarkColor),
    primaryIconTheme: IconThemeData(color: kBackgroundDarkColor),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    indicatorColor: kPrimaryLightColor,
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
    ),
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      headline1: GoogleFonts.poppins(
        color: kFontPrimaryLightColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      headline2: GoogleFonts.poppins(
        color: kFontPrimaryLightColor,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      headline3: GoogleFonts.poppins(
        color: kFontPrimaryLightColor,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      headline4: GoogleFonts.poppins(
        color: kFontPrimaryLightColor,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      headline5: GoogleFonts.poppins(
        color: kFontPrimaryLightColor,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      bodyText1: GoogleFonts.poppins(
        color: kFontPrimaryLightColor,
        fontSize: 16.0,
      ),
      bodyText2: GoogleFonts.openSans(
        color: kFontPrimaryLightColor,
        fontSize: 14.0,
      ),
      subtitle1: GoogleFonts.openSans(
        color: kFontSecondaryLightColor,
        fontSize: 14.0,
      ),
      subtitle2: GoogleFonts.openSans(
        color: kFontSecondaryLightColor,
        fontSize: 12.0,
      ),
      button: GoogleFonts.roboto(
        color: kBackgroundLightColor,
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}

/// Dark Mode
ThemeData darkThemeData(BuildContext context) {
  return ThemeData(
    appBarTheme: AppBarTheme(color: Colors.transparent, elevation: 0),
    primaryColor: kPrimaryLightColor,
    primaryColorDark: kPrimaryDarkColor,
    buttonColor: kPrimaryLightColor,
    errorColor: kErrorDarkColor,
    accentColor: kBackgroundLightColor,
    hintColor: kFontSecondaryDarkColor,
    cardColor: kCardDarkColor,
    brightness: Brightness.dark,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: kPrimaryDarkColor,
    ),
    unselectedWidgetColor: kUnselectedDarkColor,
    scaffoldBackgroundColor: kBackgroundDarkColor,
    backgroundColor: kBackgroundDarkColor,
    iconTheme: IconThemeData(color: kPrimaryLightColor),
    primaryIconTheme: IconThemeData(color: kPrimaryLightColor),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    indicatorColor: kPrimaryDarkColor,
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
    ),
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      headline1: GoogleFonts.poppins(
        color: kFontPrimaryDarkColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      headline2: GoogleFonts.poppins(
        color: kFontPrimaryDarkColor,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      headline3: GoogleFonts.poppins(
        color: kFontPrimaryDarkColor,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      headline4: GoogleFonts.poppins(
        color: kFontPrimaryDarkColor,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      headline5: GoogleFonts.poppins(
        color: kFontPrimaryDarkColor,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      bodyText1: GoogleFonts.poppins(
        color: kFontPrimaryDarkColor,
        fontSize: 16.0,
      ),
      bodyText2: GoogleFonts.openSans(
        color: kFontPrimaryDarkColor,
        fontSize: 14.0,
      ),
      subtitle1: GoogleFonts.openSans(
        color: kFontSecondaryDarkColor,
        fontSize: 14.0,
      ),
      subtitle2: GoogleFonts.openSans(
        color: kFontSecondaryDarkColor,
        fontSize: 12.0,
      ),
      button: GoogleFonts.roboto(
        color: kFontPrimaryDarkColor,
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
