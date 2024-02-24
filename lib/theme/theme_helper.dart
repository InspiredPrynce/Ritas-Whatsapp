import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

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
    PrefUtils().setThemeData(_newTheme);
    Get.forceAppUpdate();
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
      scaffoldBackgroundColor: colorScheme.onPrimary,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 56,
        space: 56,
        color: appTheme.deepPurple300,
      ),
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
        bodyLarge: TextStyle(
          color: appTheme.blueGray40008,
          fontSize: 16.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.blueGray40006,
          fontSize: 14.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 12.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 28.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: appTheme.gray10001,
          fontSize: 20.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 18.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 15.fSize,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w800,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF00A884),
    primaryContainer: Color(0XFF1B2934),
    secondaryContainer: Color(0XFF878F92),

    // Error colors
    errorContainer: Color(0X66000000),
    onError: Color(0XFF8898A5),
    onErrorContainer: Color(0XFF1F2C34),

    // On colors(text colors)
    onPrimary: Color(0XFF121B22),
    onPrimaryContainer: Color(0XFFE3ECF1),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Blue
  Color get blue300 => Color(0XFF70BCDE);

  // BlueGray
  Color get blueGray400 => Color(0XFF66998F);
  Color get blueGray40001 => Color(0XFF8795A0);
  Color get blueGray40002 => Color(0XFF85939C);
  Color get blueGray40003 => Color(0XFF828F97);
  Color get blueGray40004 => Color(0XFF86949D);
  Color get blueGray40005 => Color(0XFF868F8E);
  Color get blueGray40006 => Color(0XFF8596A0);
  Color get blueGray40007 => Color(0XFF889092);
  Color get blueGray40008 => Color(0XFF8696A1);
  Color get blueGray40009 => Color(0XFF868E90);
  Color get blueGray40010 => Color(0XFF848C8F);
  Color get blueGray500 => Color(0XFF757F88);
  Color get blueGray800 => Color(0XFF394651);
  Color get blueGray900 => Color(0XFF1E292F);
  Color get blueGray90001 => Color(0XFF273B46);

  // DeepPurple
  Color get deepPurple300 => Color(0XFF8C7BDB);

  // Gray
  Color get gray100 => Color(0XFFF3FAF9);
  Color get gray10001 => Color(0XFFF3FAF8);
  Color get gray50 => Color(0XFFFAFAFC);

  // Red
  Color get red400 => Color(0XFFCC475E);
  Color get redA200 => Color(0XFFFB504D);

  // Teal
  Color get teal900 => Color(0XFF005D4B);
  Color get teal90001 => Color(0XFF025043);

  // White
  Color get whiteA700 => Color(0XFFFFFFFF);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
