import 'package:flutter/material.dart';

Color sesamePrimary = const Color(0xFF284C8E);
Color sesameSecondary = const Color(0xFF0378A6);
Color sesameTertiary = const Color(0xFF62BCC5);

final lightColorScheme = ColorScheme.fromSeed(
    seedColor: sesameSecondary,
    primary: sesamePrimary,
    secondary: sesameSecondary,
    tertiary: sesameTertiary,
    onSurface: Colors.black,
    surfaceContainerLow: Colors.white,
    surfaceContainerHighest: const Color(0xFFF2F6FC));

final darkColorScheme = ColorScheme.fromSeed(
  seedColor: sesameSecondary,
  primary: sesamePrimary,
  tertiary: sesameTertiary,
  onSurface: Colors.white,
  surfaceContainerLow: Colors.black,
  secondary: sesameSecondary,
);
