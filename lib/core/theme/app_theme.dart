import 'package:flutter/material.dart';

final arknightsTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xFF121212),
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFFFFCF00),
    secondary: Color(0xFF00B0FF),
    surface: Color(0xFF1E1E1E),
    onSurface: Colors.white,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF121212),
    elevation: 0,
    centerTitle: false,
    titleTextStyle: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      letterSpacing: 2.0,
      color: Colors.white,
    ),
  ),
  dividerTheme: const DividerThemeData(color: Colors.white24, thickness: 1),
);