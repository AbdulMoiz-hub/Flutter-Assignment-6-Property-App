import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeColors {
  static const Color primaryColor = Color(0xFFeaf1ff);
  static const Color primaryVariantColor = Color(0xFF0e3146);
  static const Color white = Color(0xFFFFFFFF);
  static const Color blue = Color(0xFF4a85fd);
  // static const Color
}

class ThemeBuilder {
  static ThemeData buildTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      splashColor: ThemeColors.primaryColor,
      colorScheme: ColorScheme.fromSeed(seedColor: ThemeColors.primaryColor),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: ThemeColors.primaryColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: ThemeColors.primaryColor,
          foregroundColor: ThemeColors.primaryVariantColor,
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: ThemeColors.primaryColor,
          foregroundColor: ThemeColors.primaryVariantColor,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      textTheme: GoogleFonts.interTextTheme(
        Theme.of(context).textTheme,
      ),
    );
  }
}
