import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'theme_colors.dart'; // Import color constants

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
  final BoxDecoration altCardDecorations;
  final Padding cardPadding;

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
    required this.cardPadding,
    required this.altCardDecorations,
  });

  // Default theme matching the website's CSS
  factory AppTheme.defaultTheme() {
    return AppTheme(
      themeData: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.blue500,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 3,
          ),
        ),
      ),
      primaryColor: AppColors.customBlue,
      secondaryColor: AppColors.darkGray,
      backgroundColor: AppColors.textAmber,
      headingStyle: const TextStyle(
        fontFamily: 'Orbitron',
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: AppColors.blue500, // Blue text color
        letterSpacing: 0.1,
        decoration: TextDecoration.underline,
        decorationColor:
            AppColors.blue500, // ✅ Ensures underline matches text color
      ),

      subHeadingStyle: const TextStyle(
        fontFamily: 'Orbitron',
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: AppColors.blue500,
        letterSpacing: 0.05,
      ),
      bodyStyle: const TextStyle(
        fontFamily: 'sans-serif',
        fontSize: 16,
        color: AppColors.textAmber,
      ),
      labelStyle: const TextStyle(
        fontFamily: 'Orbitron',
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: AppColors.blue500,
      ),
      buttonStyle: ElevatedButton.styleFrom(
        backgroundColor: AppColors.blue500,
        foregroundColor: AppColors.white,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 3,
      ),
      cardPadding: Padding(padding: const EdgeInsets.all(8)),
      cardDecoration: BoxDecoration(
        color: AppColors.darkGray,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(150),
            blurRadius: 8,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      altCardDecorations: BoxDecoration(
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
