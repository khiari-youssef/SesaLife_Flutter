library widgetplayground;

import 'package:flutter/services.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

/// A Calculator.
void main() {
  runApp(ScreenUtilInit(
    designSize: const Size(360, 680),
    minTextAdapt: true,
    ensureScreenSize: true,
    builder: (ctx, child) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          statusBarColor: designSystemLightTheme.colorScheme.primary,
          systemNavigationBarColor:
              designSystemLightTheme.colorScheme.primary));
      return child!;
    },
    child: Center(),
  ));
}
