import 'package:flutter/material.dart';

// /// Custom theme extension to store app-specific colors
// @immutable
// class CustomColors extends ThemeExtension<CustomColors> {
//   // Text
//   final Color textPrimary;
//   final Color textSecondary;
//   final Color textTertiary;
//
//   // Icons
//   final Color iconPrimary;
//   final Color iconSecondary;
//
//   // Buttons
//   final Color buttonBackground;
//   final Color buttonText;
//
//   // Navigation / active states
//   final Color navActive;
//   final Color navInactive;
//
//   // Backgrounds
//   final Color background;
//   final Color scaffoldBackground;
//
//   const CustomColors({
//     required this.textPrimary,
//     required this.textSecondary,
//     required this.textTertiary,
//     required this.iconPrimary,
//     required this.iconSecondary,
//     required this.buttonBackground,
//     required this.buttonText,
//     required this.navActive,
//     required this.navInactive,
//     required this.background,
//     required this.scaffoldBackground,
//   });
//
//   @override
//   CustomColors copyWith({
//     Color? textPrimary,
//     Color? textSecondary,
//     Color? textTertiary,
//     Color? iconPrimary,
//     Color? iconSecondary,
//     Color? buttonBackground,
//     Color? buttonText,
//     Color? navActive,
//     Color? navInactive,
//     Color? background,
//     Color? scaffoldBackground,
//   }) {
//     return CustomColors(
//       textPrimary: textPrimary ?? this.textPrimary,
//       textSecondary: textSecondary ?? this.textSecondary,
//       textTertiary: textTertiary ?? this.textTertiary,
//       iconPrimary: iconPrimary ?? this.iconPrimary,
//       iconSecondary: iconSecondary ?? this.iconSecondary,
//       buttonBackground: buttonBackground ?? this.buttonBackground,
//       buttonText: buttonText ?? this.buttonText,
//       navActive: navActive ?? this.navActive,
//       navInactive: navInactive ?? this.navInactive,
//       background: background ?? this.background,
//       scaffoldBackground: scaffoldBackground ?? this.scaffoldBackground,
//     );
//   }
//
//   @override
//   CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
//     if (other is! CustomColors) return this;
//     return CustomColors(
//       textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
//       textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
//       textTertiary: Color.lerp(textTertiary, other.textTertiary, t)!,
//       iconPrimary: Color.lerp(iconPrimary, other.iconPrimary, t)!,
//       iconSecondary: Color.lerp(iconSecondary, other.iconSecondary, t)!,
//       buttonBackground: Color.lerp(buttonBackground, other.buttonBackground, t)!,
//       buttonText: Color.lerp(buttonText, other.buttonText, t)!,
//       navActive: Color.lerp(navActive, other.navActive, t)!,
//       navInactive: Color.lerp(navInactive, other.navInactive, t)!,
//       background: Color.lerp(background, other.background, t)!,
//       scaffoldBackground: Color.lerp(scaffoldBackground, other.scaffoldBackground, t)!,
//     );
//   }
// }
//
// class AppTheme {
//   AppTheme._();
//
//   /// ----------------- Light Theme -------------------------------
//   static ThemeData lightTheme = ThemeData(
//     brightness: Brightness.light,
//     primaryColor: Colors.blue,
//     scaffoldBackgroundColor: Colors.white,
//     colorScheme: const ColorScheme.light(
//       primary: Colors.blue,
//       secondary: Colors.blueAccent,
//       background: Colors.white,
//       surface: Color(0xFFF5F5F5),
//     ),
//     extensions: <ThemeExtension<dynamic>>[
//       const CustomColors(
//         textPrimary: Color(0xFF161616),
//         textSecondary: Colors.white,
//         textTertiary: Color(0xFF939393),
//         iconPrimary: Color(0xFF161616),
//         iconSecondary: Color(0xFF00E1EA),
//         buttonBackground: Color(0xFF182157),
//         buttonText: Colors.white,
//         navActive: Color(0xFF182157),
//         navInactive: Colors.grey,
//         background: Color(0xFFFFFFFF),
//         scaffoldBackground: Color(0xFFF5F5F5),
//       ),
//     ],
//   );
//
//   /// ----------------- Dark Theme -------------------------------
//   static ThemeData darkTheme = ThemeData(
//     brightness: Brightness.dark,
//     primaryColor: Colors.teal,
//     scaffoldBackgroundColor: Color(0xFF121212),
//     colorScheme: const ColorScheme.dark(
//       primary: Colors.teal,
//       secondary: Colors.tealAccent,
//       background: Color(0xFF1E1E1E),
//       surface: Color(0xFF121212),
//     ),
//     extensions: <ThemeExtension<dynamic>>[
//       const CustomColors(
//         textPrimary: Color(0xFFF5F5F5),
//         textSecondary: Colors.black,
//         textTertiary: Color(0xFF999999),
//         iconPrimary: Color(0xFFF5F5F5),
//         iconSecondary: Color(0xFF00E1EA),
//         buttonBackground: Color(0xFF00BCD4),
//         buttonText: Colors.black,
//         navActive: Color(0xFF00BCD4),
//         navInactive: Colors.grey,
//         background: Color(0xFF1E1E1E),
//         scaffoldBackground: Color(0xFF121212),
//       ),
//     ],
//   );
// }
//
//
//
//
//
// -------------------------------------


import 'package:flutter/material.dart';

/// Custom theme extension to store all app-specific colors
@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  // Material base colors
  final Color primary;
  final Color onPrimary;
  final Color secondary;
  final Color onSecondary;
  final Color error;
  final Color onError;
  final Color surface;
  final Color onSurface;
  final Color background;
  final Color onBackground;

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

  // Scaffold backgrounds
  final Color scaffoldBackground;

  const CustomColors({
    // Material
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.onSecondary,
    required this.error,
    required this.onError,
    required this.surface,
    required this.onSurface,
    required this.background,
    required this.onBackground,

    // Text
    required this.textPrimary,
    required this.textSecondary,
    required this.textTertiary,

    // Icons
    required this.iconPrimary,
    required this.iconSecondary,

    // Buttons
    required this.buttonBackground,
    required this.buttonText,

    // Nav
    required this.navActive,
    required this.navInactive,

    // Scaffold
    required this.scaffoldBackground,
  });

  @override
  CustomColors copyWith({
    Color? primary,
    Color? onPrimary,
    Color? secondary,
    Color? onSecondary,
    Color? error,
    Color? onError,
    Color? surface,
    Color? onSurface,
    Color? background,
    Color? onBackground,
    Color? textPrimary,
    Color? textSecondary,
    Color? textTertiary,
    Color? iconPrimary,
    Color? iconSecondary,
    Color? buttonBackground,
    Color? buttonText,
    Color? navActive,
    Color? navInactive,
    Color? scaffoldBackground,
  }) {
    return CustomColors(
      primary: primary ?? this.primary,
      onPrimary: onPrimary ?? this.onPrimary,
      secondary: secondary ?? this.secondary,
      onSecondary: onSecondary ?? this.onSecondary,
      error: error ?? this.error,
      onError: onError ?? this.onError,
      surface: surface ?? this.surface,
      onSurface: onSurface ?? this.onSurface,
      background: background ?? this.background,
      onBackground: onBackground ?? this.onBackground,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textTertiary: textTertiary ?? this.textTertiary,
      iconPrimary: iconPrimary ?? this.iconPrimary,
      iconSecondary: iconSecondary ?? this.iconSecondary,
      buttonBackground: buttonBackground ?? this.buttonBackground,
      buttonText: buttonText ?? this.buttonText,
      navActive: navActive ?? this.navActive,
      navInactive: navInactive ?? this.navInactive,
      scaffoldBackground: scaffoldBackground ?? this.scaffoldBackground,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) return this;
    return CustomColors(
      primary: Color.lerp(primary, other.primary, t)!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      onSecondary: Color.lerp(onSecondary, other.onSecondary, t)!,
      error: Color.lerp(error, other.error, t)!,
      onError: Color.lerp(onError, other.onError, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      onSurface: Color.lerp(onSurface, other.onSurface, t)!,
      background: Color.lerp(background, other.background, t)!,
      onBackground: Color.lerp(onBackground, other.onBackground, t)!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      textTertiary: Color.lerp(textTertiary, other.textTertiary, t)!,
      iconPrimary: Color.lerp(iconPrimary, other.iconPrimary, t)!,
      iconSecondary: Color.lerp(iconSecondary, other.iconSecondary, t)!,
      buttonBackground: Color.lerp(buttonBackground, other.buttonBackground, t)!,
      buttonText: Color.lerp(buttonText, other.buttonText, t)!,
      navActive: Color.lerp(navActive, other.navActive, t)!,
      navInactive: Color.lerp(navInactive, other.navInactive, t)!,
      scaffoldBackground: Color.lerp(scaffoldBackground, other.scaffoldBackground, t)!,
    );
  }
}

class AppTheme {
  AppTheme._();

  /// ----------------- Light Theme -------------------------------
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: Colors.blue,
      onPrimary: Colors.white,
      secondary: Colors.blueAccent,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      background: Colors.white,
      onBackground: Colors.black,
      surface: Color(0xFFF5F5F5),
      onSurface: Colors.black,
    ),
    extensions: [
      const CustomColors(
        primary: Colors.red,
        onPrimary: Colors.white,
        secondary: Colors.blueAccent,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        surface: Color(0xFFF5F5F5),
        onSurface: Colors.black,
        background: Colors.white,
        onBackground: Colors.black,
        textPrimary: Color(0xFF161616),
        textSecondary: Colors.white,
        textTertiary: Color(0xFF939393),
        iconPrimary: Color(0xFF161616),
        iconSecondary: Color(0xFF00E1EA),
        buttonBackground: Color(0xFF182157),
        buttonText: Colors.white,
        navActive: Color(0xFF182157),
        navInactive: Colors.grey,
        scaffoldBackground: Color(0xFFF5F5F5),
      ),
    ],
  );

  /// ----------------- Dark Theme -------------------------------
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      primary: Colors.teal,
      onPrimary: Colors.black,
      secondary: Colors.tealAccent,
      onSecondary: Colors.black,
      error: Colors.redAccent,
      onError: Colors.black,
      background: Color(0xFF1E1E1E),
      onBackground: Colors.white,
      surface: Color(0xFF121212),
      onSurface: Colors.white,
    ),
    extensions: [
      const CustomColors(
        primary: Colors.teal,
        onPrimary: Colors.black,
        secondary: Colors.tealAccent,
        onSecondary: Colors.black,
        error: Colors.redAccent,
        onError: Colors.black,
        surface: Color(0xFF121212),
        onSurface: Colors.white,
        background: Color(0xFF1E1E1E),
        onBackground: Colors.white,
        textPrimary: Color(0xFFF5F5F5),
        textSecondary: Colors.black,
        textTertiary: Color(0xFF999999),
        iconPrimary: Color(0xFFF5F5F5),
        iconSecondary: Color(0xFF00E1EA),
        buttonBackground: Color(0xFF00BCD4),
        buttonText: Colors.black,
        navActive: Color(0xFF00BCD4),
        navInactive: Colors.grey,
        scaffoldBackground: Color(0xFF121212),
      ),
    ],
  );
}
