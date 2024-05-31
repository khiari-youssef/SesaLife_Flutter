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
    child: const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        HeadlineLarge(text: "Headline Large"),
        HeadlineMedium(text: "Headline Medium"),
        HeadlineSmall(text: "Headline Small"),
        TitleLarge(text: "Title Large"),
        TitleMedium(text: "Title Medium"),
        TitleSmall(text: "Title Small"),
        BodyLarge(text: "Body Large"),
        BodyMedium(text: "Body Medium"),
        BodySmall(text: "Body Small"),
        LabelLarge(text: "Label Large"),
        LabelMedium(text: "Label Medium"),
        LabelSmall(text: "Label Small")
      ],
    ),
  ));
}
