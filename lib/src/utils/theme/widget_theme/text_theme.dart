import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme{
  static TextTheme lightTextTheme = TextTheme(
      titleMedium: GoogleFonts.montserrat(
          color: Colors.black,
          fontSize: 20
      )
  );
  static TextTheme darkTextTheme = TextTheme(
      titleMedium: GoogleFonts.montserrat(
          color: Colors.white,
          fontSize: 20
      )
  );
}