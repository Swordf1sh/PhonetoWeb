import 'package:flutter/material.dart';

ThemeData darkDefaultTheme = ThemeData.dark().copyWith(
    useMaterial3: true,
    colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: Color.fromARGB(255, 188, 194, 255),
        onPrimary: Color.fromARGB(255, 27, 38, 120),
        primaryContainer: Color.fromARGB(255, 52, 63, 143),
        onPrimaryContainer: Color.fromARGB(255, 223, 224, 255),
        secondary: Color.fromARGB(255, 196, 196, 220),
        onSecondary: Color.fromARGB(255, 45, 48, 67),
        secondaryContainer: Color.fromARGB(255, 68, 69, 89),
        onSecondaryContainer: Color.fromARGB(255, 224, 244, 248),
        tertiary: Color.fromARGB(255, 230, 185, 214),
        onTertiary: Color.fromARGB(255, 70, 38, 61),
        error: Color.fromARGB(255, 254, 180, 171),
        onError: Color.fromARGB(255, 105, 0, 5),
        background: Color.fromARGB(255, 27, 26, 31),
        onBackground: Color.fromARGB(255, 227, 225, 230),
        surface: Color.fromARGB(255, 27, 26, 31),
        onSurface: Color.fromARGB(255, 227, 225, 230)));
