import 'package:flutter/material.dart';

final class FontConstants {
  static final headline1Font = TextStyle(
    fontFamily: _halcomFontFamily,
    fontSize: 38,
    color: Colors.white,
    fontWeight: FontWeight.w900,
  );
  static final componentTitle = TextStyle(
    fontFamily: _halcomFontFamily,
    fontSize: 24,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  static final componentBody = TextStyle(
    fontFamily: _halcomFontFamily,
    color: Colors.white,
    fontSize: 15,
  );
  static final componentDescription = TextStyle(
    fontFamily: _halcomFontFamily,
    color: Colors.white,
    fontSize: 14,
  );

  static final componentSmall = TextStyle(
    fontFamily: _halcomFontFamily,
    color: Colors.white,
    fontSize: 12,
  );

  static const _halcomFontFamily = 'Halcom';
}
