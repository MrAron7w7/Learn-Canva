import 'package:flutter/material.dart';

class MyTextTheme {
  MyTextTheme._();
  static ThemeData defaultTheme = ThemeData(
    fontFamily: 'SFProDisplay',
    textTheme: const TextTheme(
      // Display
      displayLarge: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      displayMedium: TextStyle(fontSize: 36, fontWeight: FontWeight.w300),

      // Head
      headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
      headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),

      // Title
      titleMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      titleSmall: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),

      // Body
      bodyMedium: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
      bodySmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),

      // Label
      labelLarge: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
      labelMedium: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
      labelSmall: TextStyle(fontSize: 8, fontWeight: FontWeight.w300),
    ),
  );
}
