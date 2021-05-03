import 'package:facebook/config/palette.dart';
import 'package:flutter/material.dart';

enum ThemeProfile { light, dark }

ThemeData myTheme(ThemeProfile prof) {
  ThemeData lightTheme = ThemeData.light();
  switch (prof) {
    case ThemeProfile.light:
      {
        return ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Palette.scaffold,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          appBarTheme: AppBarTheme(
            centerTitle: false,
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
          ),
        );
      }
    case ThemeProfile.dark:
      {
        return ThemeData.dark();
      }
    default:
      {
        return lightTheme;
      }
  }
}
