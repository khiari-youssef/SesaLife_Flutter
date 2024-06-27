import 'package:flutter/material.dart';

Color sesamePrimary = const Color(0xFF284C8E);
Color sesameSecondary = const Color(0xFF0378A6);
Color sesameTertiary = const Color(0xFF62BCC5);

final lightColorScheme = ColorScheme.fromSeed(
    seedColor: sesameSecondary,
    primary: sesamePrimary,
    secondary: sesameSecondary,
    tertiary: sesameTertiary,
    surface: Colors.white,
    onSurface: Colors.black,
    surfaceContainerLowest: const Color(0xFFfafcff),
    surfaceContainerLow: const Color(0xFFF2F6FC),
    surfaceContainer: const Color(0xFFD7E7FF),
    surfaceContainerHigh: const Color(0xFF6b84b3),
    surfaceContainerHighest: sesamePrimary);

final darkColorScheme = ColorScheme.fromSeed(
    seedColor: sesameSecondary,
    primary: sesamePrimary,
    tertiary: sesameTertiary,
    surfaceContainerLow: Colors.black,
    surfaceContainer: Colors.black,
    surface: Colors.black,
    onSurface: Colors.white,
    secondary: sesameSecondary,
    surfaceContainerHigh: const Color(0xFFF2F6FC),
    surfaceContainerHighest: const Color(0xFFF2F6FC));
