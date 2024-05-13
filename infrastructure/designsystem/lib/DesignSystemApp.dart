import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DesignSystemApp extends StatelessWidget {
  final MaterialApp rootApp;
  const DesignSystemApp({super.key, required this.rootApp});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 680),
        builder: (ctx, child) {
          return rootApp;
        });
  }
}
