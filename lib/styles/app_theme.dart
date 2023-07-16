import 'package:flutter/material.dart';

class AppTheme {
  final Color primary = Color(0xFF264653);
  final Color secondary = Color(0xFFE9C46A);
  final Color tertiary = Color(0xFF2A9D8F);

  ThemeData light() {
    return ThemeData(
      colorScheme: ColorScheme.light(
        primary: primary,
        primaryContainer: primary.withOpacity(0.7),
        secondary: secondary,
        secondaryContainer: secondary.withOpacity(0.7),
        tertiary: tertiary,
        tertiaryContainer: tertiary.withOpacity(0.7),
      ),
    );
  }
}
