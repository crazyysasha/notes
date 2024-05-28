import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amberAccent),
        useMaterial3: true,
        textTheme: _textTheme,
      );

  static TextTheme get _textTheme => const TextTheme(
        titleLarge: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
        titleMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        labelLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      );
}
