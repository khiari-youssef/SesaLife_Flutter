import 'package:designsystem/theme/colors.dart';
import 'package:designsystem/theme/styles.dart';
import 'package:flutter/material.dart';

final ThemeData designSystemLightTheme = ThemeData(
    colorScheme: lightColorScheme,
    hintColor: const Color(0xFF8D8B8B),
    textTheme: lightThemeText,
    typography: Typography(black: lightThemeText, white: lightThemeText),
    useMaterial3: true);

final ThemeData designSystemDarkTheme = ThemeData(
  colorScheme: darkColorScheme,
  textTheme: lightThemeText,
  typography: Typography(black: lightThemeText, white: lightThemeText),
  useMaterial3: true,
);
