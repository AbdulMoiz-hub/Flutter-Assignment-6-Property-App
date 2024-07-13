import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class ThemeColors {
  Color primaryColor = const Color(0xFFeaf1ff);
  Color primaryVariantColor = const Color(0xFF0e3146);
  Color white = const Color(0xFFFFFFFF);
  Color blue = const Color(0xFF4a85fd);
  Color textColor = const Color(0xFF000000);

  static ThemeColors getThemeColors(BuildContext context) {
    final Brightness brightness = Theme.of(context).brightness;
    if (brightness == Brightness.dark) {
      return DarkThemeColors();
    } else {
      return LightThemeColors();
    }
  }
}

class LightThemeColors extends ThemeColors {
  LightThemeColors() {
    super.primaryColor = const Color(0xFFeaf1ff);
    super.primaryVariantColor = const Color(0xFF0e3146);
    super.white = const Color(0xFFFFFFFF);
    super.blue = const Color(0xFF4a85fd);
    super.textColor = const Color(0xFF000000);
  }
}

class DarkThemeColors extends ThemeColors {
  DarkThemeColors() {
    super.primaryColor = Color.fromARGB(255, 59, 59, 59);
    super.primaryVariantColor = Color.fromARGB(255, 212, 212, 212);
    super.white = const Color(0xFFFFFFFF);
    super.blue = const Color(0xFF4a85fd);
    textColor = Color.fromARGB(255, 218, 218, 218);
  }
}

class ThemeBuilder {
  static ThemeData buildTheme(BuildContext context, Brightness brightness) {
    ThemeColors themeColors = LightThemeColors();
    if (brightness == Brightness.dark) {
      themeColors = DarkThemeColors();
    }

    return ThemeData(
      useMaterial3: true,
      splashColor: themeColors.primaryColor,
      colorScheme: ColorScheme.fromSeed(
        seedColor: themeColors.primaryColor,
        brightness: brightness,
      ),
      textTheme: GoogleFonts.interTextTheme(
        Theme.of(context).textTheme,
      ).apply(
        bodyColor: themeColors.textColor,
        displayColor: themeColors.textColor,
      ),
      iconTheme: IconThemeData(
        color: themeColors.primaryVariantColor,
        size: 30,
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          foregroundColor: themeColors.primaryColor,
          backgroundColor: themeColors.primaryVariantColor,
          fixedSize: const Size.square(60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: themeColors.primaryColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: themeColors.primaryColor,
          foregroundColor: themeColors.primaryVariantColor,
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
          backgroundColor: themeColors.primaryColor,
          foregroundColor: themeColors.primaryVariantColor,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
