import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodySmall: TextStyle(
          color: appTheme.blueGray700,
          fontSize: 12.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: appTheme.blueGray100,
          fontSize: 32.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: appTheme.gray900,
          fontSize: 18.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light();
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black90028 => Color(0X28000000);

  // Blue
  Color get blue100 => Color(0XFFB4D5FF);
  Color get blue400 => Color(0XFF46B2E3);
  Color get blue50 => Color(0XFFEBF4FF);
  Color get blue5000 => Color(0X00E1EEFF);

  // BlueGray
  Color get blueGray100 => Color(0XFFCBD5E1);
  Color get blueGray10001 => Color(0XFFC9D9E8);
  Color get blueGray300 => Color(0XFF94A3B8);
  Color get blueGray30001 => Color(0XFF7FA4C7);
  Color get blueGray700 => Color(0XFF475569);

  // DeepPurple
  Color get deepPurpleA400 => Color(0XFF4C24FB);
  Color get deepPurpleA700 => Color(0XFF4B00FF);

  // Gray
  Color get gray50 => Color(0XFFF8FAFC);
  Color get gray5001 => Color(0XFFF5FAFF);
  Color get gray900 => Color(0XFF0F172A);

  // White
  Color get whiteA700 => Color(0XFFFFFFFF);
  Color get whiteA70000 => Color(0X00FBFDFF);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();