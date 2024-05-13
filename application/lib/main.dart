import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import 'AppNavigationConfiguration.dart';
import 'dependenciesLoader.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
    child: Builder(
      builder: (BuildContext context) {
        loadRuntimeDependencies(context);
        return MaterialApp.router(
            theme: designSystemLightTheme,
            themeMode: ThemeMode.system,
            darkTheme: designSystemDarkTheme,
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              S.delegate
            ],
            supportedLocales: const [
              Locale('en'),
              Locale('fr'),
            ],
            routerConfig:
                GetIt.instance.get<AppNavigationConfiguration>().config());
      },
    ),
  ));
}
