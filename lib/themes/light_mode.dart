import 'package:flutter/material.dart';

ThemeData lightMode  = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
        background: Color(0xfffaf3e3),
        primary: Color(0xffd7d2bf),
        secondary: Colors.black,
        inversePrimary: Colors.black
    ),

);

ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
        background: Colors.grey.shade800, // Inverted from light mode background
        primary: Colors.grey.shade900,    // Inverted from light mode primary
        secondary: Colors.black,          // Inverted from light mode secondary
        inversePrimary: Colors.white, // Inverted from light mode inversePrimary
    ),
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.grey.shade900, // White background for light mode AppBar
        foregroundColor: Colors.grey.shade900, // Black foreground color for light mode AppBar
    ),
);

