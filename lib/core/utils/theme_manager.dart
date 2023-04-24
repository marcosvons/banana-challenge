import 'package:flutter/material.dart';

final ThemeData customTheme = ThemeData.dark().copyWith(
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF9E007E),
    onPrimary: Color(0xFFECECEC),
    secondary: Color(0xFFECECEC),
    onSecondary: Color(0xFF2C2C2E),
    error: Colors.red,
    onError: Color(0xFF1C1C1E),
    background: Color(0xFF1C1C1E),
    onBackground: Color(0xFF4A4A4F),
    surface: Color(0xFF4A4A4F),
    onSurface: Color(0xFFECECEC),
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontSize: 48,
      fontWeight: FontWeight.w700,
      color: Color(0xFFECECEC),
    ),
    headlineMedium: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w700,
      color: Color(0xFFECECEC),
    ),
    headlineSmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: Color(0xFFECECEC),
    ),
    titleLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: Color(0xFFECECEC),
    ),
    titleMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: Color(0xFFECECEC),
    ),
    titleSmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: Color(0xFFECECEC),
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Color(0xFFECECEC),
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color(0xFFECECEC),
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Color(0xFFECECEC),
    ),
  ),
);
