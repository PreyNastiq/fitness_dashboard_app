import 'package:flutter/material.dart';

class AppColor {
  // Light Theme
  static const Color lightBackground = Color(0xFFF5F5F5);
  static const Color lightSurface = Color(0xFF1E1E1E);
  static const Color lightPrimary = Color(0xFFFFFFFF);
  static const Color lightSecondaryText = Colors.grey;
  static const Color lightShadow = Colors.white12;

  // Dark Theme
  static const Color darkBackground = Color(0xFF121212);
  static const Color darkSurface = Color(0xFFFFFFFF);
  static const Color darkPrimary = Color(0xFF1E1E1E);
  static const Color darkSecondaryText = Colors.black54;
  static const Color darkShadow = Colors.white;

  // Shadows (can be reused)
  static List<BoxShadow> getCardShadows(bool isDarkMode) {
    return [
      BoxShadow(
        color: lightShadow.withOpacity(isDarkMode ? 0.05 : 0.1),
        blurRadius: 12,
        offset: const Offset(-4, -4),
      ),
      BoxShadow(
        color: darkShadow.withOpacity(isDarkMode ? 0.4 : 0.7),
        blurRadius: 12,
        offset: const Offset(4, 4),
      ),
    ];
  }

  // Subtle gray text
  static Color subtleTextColor(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return isDark ? darkSecondaryText : lightSecondaryText;
  }

  // Text Theme
  static TextTheme getTextTheme(bool isDark) {
    return TextTheme(
      displayLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: isDark ? lightBackground : darkBackground,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        color: isDark ? lightSurface : darkSurface,
      ),
      labelSmall: TextStyle(
        fontSize: 14,
        color: isDark ? darkSecondaryText : lightSecondaryText,
      ),
    );
  }

  // Light ThemeData
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: lightBackground,
    primaryColor: lightPrimary,
    cardColor: lightSurface,
    iconTheme: const IconThemeData(color: lightSurface),
    textTheme: getTextTheme(false),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: lightPrimary,
        foregroundColor: lightBackground,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    ),
  );

  // Dark ThemeData
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: darkBackground,
    primaryColor: darkPrimary,
    cardColor: darkSurface,
    iconTheme: const IconThemeData(color: darkSurface),
    textTheme: getTextTheme(true),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: darkPrimary,
        foregroundColor: darkBackground,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    ),
  );
}
