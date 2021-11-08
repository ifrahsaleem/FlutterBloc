import 'package:flutter/material.dart';

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColor: Colors.black,
    colorScheme: const ColorScheme.dark(),
    iconTheme: IconThemeData(color: Colors.purple.shade200, opacity: 0.8),
    textTheme: const TextTheme(
      headline1: TextStyle(),
      headline2: TextStyle(),
      bodyText1: TextStyle(),
      bodyText2: TextStyle(),
    ).apply(bodyColor: Colors.white38, displayColor: Colors.white38),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,
    colorScheme: const ColorScheme.light(),
    iconTheme: const IconThemeData(color: Colors.red, opacity: 0.8),
    textTheme: const TextTheme(
      bodyText1: TextStyle(),
      bodyText2: TextStyle(),
    ).apply(bodyColor: Colors.black12, displayColor: Colors.black12),
  );
}
