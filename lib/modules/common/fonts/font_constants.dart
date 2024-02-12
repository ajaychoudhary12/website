import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final class FontConstants {
  static final headline1Font = GoogleFonts.roboto(
    fontWeight: FontWeight.w900,
    color: Colors.white,
    fontSize: 38,
  );

  static final componentTitle = GoogleFonts.roboto(
    fontSize: 24,
    color: Colors.white,
    fontWeight: FontWeight.w800,
  );

  static final componentBody = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 15,
  );

  static final componentDescription = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 14,
  );

  static final componentSmall = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 12,
  );
}
