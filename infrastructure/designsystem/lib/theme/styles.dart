import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final TextTheme lightThemeText = TextTheme(
    labelLarge: labelBaseStyle.copyWith(fontSize: 16.sp),
    labelMedium: labelBaseStyle,
    labelSmall: labelBaseStyle.copyWith(fontSize: 10.sp),
    titleLarge: titleBase,
    titleMedium: titleBase.copyWith(fontSize: 20.sp),
    titleSmall: titleBase.copyWith(fontSize: 18.sp),
    bodyMedium: bodyBaseStyle,
    bodyLarge: bodyBaseStyle.copyWith(fontSize: 16.sp),
    bodySmall: bodyBaseStyle.copyWith(fontSize: 12.sp),
    headlineLarge: titleBase.copyWith(fontSize: 20.sp),
    headlineMedium: titleBase.copyWith(fontSize: 18.sp),
    headlineSmall: titleBase.copyWith(fontSize: 16.sp));

final TextStyle labelBaseStyle = TextStyle(
    fontSize: 14.sp, fontWeight: FontWeight.w500, fontFamily: 'Roboto');

final TextStyle titleBase = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
    fontFamily: 'Roboto',
    height: 1.4);

final TextStyle bodyBaseStyle = TextStyle(
    fontSize: 14.sp, fontWeight: FontWeight.w400, fontFamily: 'Roboto');
