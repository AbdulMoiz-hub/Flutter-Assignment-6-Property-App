import 'package:flutter/material.dart';

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
    super.primaryColor = const Color(0xFF3B3B3B);
    super.primaryVariantColor = const Color(0xFFD4D4D4);
    super.white = const Color(0xFFFFFFFF);
    super.blue = const Color(0xFF4a85fd);
    textColor = const Color(0xFFDADADA);
  }
}
