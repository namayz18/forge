import 'package:flutter/material.dart';

class AppTextTheme {
  static TextTheme get light => const TextTheme(
        // Display
        displayLarge: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.w600,
        ),
        // SubDisplay
        displaySmall: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w300,
        ),
        // Main
        headlineLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        // Heading
        titleLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        // Title
        titleMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        // SubTitle
        titleSmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w300,
        ),
        // Body
        bodyLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        // Description
        bodyMedium: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        // Placeholder
        labelLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w300,
          color: Color(0xffB4B9C0),
        ),
        // Button
        labelMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        // Text Button
        labelSmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Color(0xFF1c44fc),
        ),
      );

  static TextTheme get dark => const TextTheme(
        // Display
        displayLarge: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.w600,
        ),
        // SubDisplay
        displaySmall: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w300,
        ),
        // Main
        headlineLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        // Heading
        titleLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        // Title
        titleMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        // SubTitle
        titleSmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w300,
        ),
        // Body
        bodyLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        // Description
        bodyMedium: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        // Placeholder
        labelLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w300,
          color: Color(0xffB4B9C0),
        ),
        // Button
        labelMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        // Text Button
        labelSmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Color(0xFF1c44fc),
        ),
      );
}
