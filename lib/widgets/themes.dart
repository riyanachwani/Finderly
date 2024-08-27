import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF2596BE)),
        fontFamily: GoogleFonts.arOneSans().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.black,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          elevation: 0.0,
          foregroundColor: Colors.white,
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.arOneSans().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          elevation: 0.0,
          foregroundColor: Colors.black,
        ),
      );
}
