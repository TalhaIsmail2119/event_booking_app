import 'package:flutter/material.dart';

/// Custom theme extension to store app-specific colors
@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  // Text
  final Color textPrimary;
  final Color textSecondary;
  final Color textTertiary;

  // Icons
  final Color iconPrimary;
  final Color iconSecondary;

  // Buttons
  final Color buttonBackground;
  final Color buttonText;

  // Navigation / active states
  final Color navActive;
  final Color navInactive;

  // Backgrounds
  final Color background;
  final Color scaffoldBackground;

  const CustomColors({
    required this.textPrimary,
    required this.textSecondary,
    required this.textTertiary,
    required this.iconPrimary,
    required this.iconSecondary,
    required this.buttonBackground,
    required this.buttonText,
    required this.navActive,
    required this.navInactive,
    required this.background,
    required this.scaffoldBackground,
  });

  @override
  CustomColors copyWith({
    Color? textPrimary,
    Color? textSecondary,
    Color? textTertiary,
    Color? iconPrimary,
    Color? iconSecondary,
    Color? buttonBackground,
    Color? buttonText,
    Color? navActive,
    Color? navInactive,
    Color? background,
    Color? scaffoldBackground,
  }) {
    return CustomColors(
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textTertiary: textTertiary ?? this.textTertiary,
      iconPrimary: iconPrimary ?? this.iconPrimary,
      iconSecondary: iconSecondary ?? this.iconSecondary,
      buttonBackground: buttonBackground ?? this.buttonBackground,
      buttonText: buttonText ?? this.buttonText,
      navActive: navActive ?? this.navActive,
      navInactive: navInactive ?? this.navInactive,
      background: background ?? this.background,
      scaffoldBackground: scaffoldBackground ?? this.scaffoldBackground,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) return this;
    return CustomColors(
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      textTertiary: Color.lerp(textTertiary, other.textTertiary, t)!,
      iconPrimary: Color.lerp(iconPrimary, other.iconPrimary, t)!,
      iconSecondary: Color.lerp(iconSecondary, other.iconSecondary, t)!,
      buttonBackground: Color.lerp(buttonBackground, other.buttonBackground, t)!,
      buttonText: Color.lerp(buttonText, other.buttonText, t)!,
      navActive: Color.lerp(navActive, other.navActive, t)!,
      navInactive: Color.lerp(navInactive, other.navInactive, t)!,
      background: Color.lerp(background, other.background, t)!,
      scaffoldBackground: Color.lerp(scaffoldBackground, other.scaffoldBackground, t)!,
    );
  }
}

class AppTheme {
  AppTheme._();

  /// ----------------- Light Theme -------------------------------
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(
      primary: Colors.blue,
      secondary: Colors.blueAccent,
      background: Colors.white,
      surface: Color(0xFFF5F5F5),
    ),
    extensions: <ThemeExtension<dynamic>>[
      const CustomColors(
        textPrimary: Color(0xFF161616),
        textSecondary: Color(0xFF707070),
        textTertiary: Color(0xFF939393),
        iconPrimary: Color(0xFF161616),
        iconSecondary: Color(0xFF00E1EA),
        buttonBackground: Color(0xFF182157),
        buttonText: Colors.white,
        navActive: Color(0xFF182157),
        navInactive: Colors.grey,
        background: Color(0xFFFFFFFF),
        scaffoldBackground: Color(0xFFF5F5F5),
      ),
    ],
  );

  /// ----------------- Dark Theme -------------------------------
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.teal,
    scaffoldBackgroundColor: Color(0xFF121212),
    colorScheme: const ColorScheme.dark(
      primary: Colors.teal,
      secondary: Colors.tealAccent,
      background: Color(0xFF1E1E1E),
      surface: Color(0xFF121212),
    ),
    extensions: <ThemeExtension<dynamic>>[
      const CustomColors(
        textPrimary: Color(0xFFF5F5F5),
        textSecondary: Color(0xFFCCCCCC),
        textTertiary: Color(0xFF999999),
        iconPrimary: Color(0xFFF5F5F5),
        iconSecondary: Color(0xFF00E1EA),
        buttonBackground: Color(0xFF00BCD4),
        buttonText: Colors.black,
        navActive: Color(0xFF00BCD4),
        navInactive: Colors.grey,
        background: Color(0xFF1E1E1E),
        scaffoldBackground: Color(0xFF121212),
      ),
    ],
  );
}
