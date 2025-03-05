import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppTheme {
  final ThemeData themeData;
  final Color primaryColor;
  final Color secondaryColor;
  final Color backgroundColor;
  final TextStyle headingStyle;
  final TextStyle subHeadingStyle;
  final TextStyle bodyStyle;
  final TextStyle labelStyle;
  final ButtonStyle buttonStyle;
  final BoxDecoration cardDecoration;

  AppTheme({
    required this.themeData,
    required this.primaryColor,
    required this.secondaryColor,
    required this.backgroundColor,
    required this.headingStyle,
    required this.subHeadingStyle,
    required this.bodyStyle,
    required this.labelStyle,
    required this.buttonStyle,
    required this.cardDecoration,
  });

  // Default theme matching the website's CSS
  factory AppTheme.defaultTheme() {
    return AppTheme(
      themeData: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF60A5FA), // text-blue-400
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 3,
          ),
        ),
      ),
      primaryColor: const Color(0xFF007BFF),
      secondaryColor: const Color(0xFF1A202C),
      backgroundColor: const Color.from(alpha: 1, red: 51, green: 65, blue: 85),
      headingStyle: const TextStyle(
        fontFamily: 'Orbitron',
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Color(0xFF60A5FA), // Blue text color
        letterSpacing: 0.1,
        decoration: TextDecoration.underline,
        decorationColor: Color(
          0xFF60A5FA,
        ), // ✅ Ensures underline matches text color
      ),

      subHeadingStyle: const TextStyle(
        fontFamily: 'Orbitron',
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xFF60A5FA),
        letterSpacing: 0.05,
      ),
      bodyStyle: const TextStyle(
        fontFamily: 'sans-serif',
        fontSize: 16,
        color: Color(0xFFD1D5DB),
      ),
      labelStyle: const TextStyle(
        fontFamily: 'Orbitron',
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Color(0xFF60A5FA),
      ),
      buttonStyle: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF60A5FA),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 3,
      ),
      cardDecoration: BoxDecoration(
        color: const Color(0xFF1A202C),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(150),
            blurRadius: 8,
            offset: const Offset(2, 2),
          ),
        ],
      ),
    );
  }
}

// Riverpod provider for theme management
final themeProvider = StateProvider<AppTheme>((ref) {
  return AppTheme.defaultTheme();
});
