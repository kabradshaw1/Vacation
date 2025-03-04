import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppTheme {
  final ThemeData themeData;
  final Color primaryColor;
  final TextStyle headingStyle;
  final TextStyle bodyStyle;
  final ButtonStyle buttonStyle;

  AppTheme({
    required this.themeData,
    required this.primaryColor,
    required this.headingStyle,
    required this.bodyStyle,
    required this.buttonStyle,
  });

  // Default theme using Orbitron and sans-serif
  factory AppTheme.defaultTheme() {
    return AppTheme(
      themeData: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: const TextTheme(
          headline6: TextStyle(
            fontFamily: 'Orbitron',
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(fontFamily: 'SansSerif', fontSize: 16),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
      primaryColor: Colors.deepPurple,
      headingStyle: const TextStyle(
        fontFamily: 'Orbitron',
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.deepPurple,
      ),
      bodyStyle: const TextStyle(
        fontFamily: 'SansSerif',
        fontSize: 16,
        color: Colors.black,
      ),
      buttonStyle: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}

// Riverpod provider for theme management
final themeProvider = StateProvider<AppTheme>((ref) {
  return AppTheme.defaultTheme();
});
