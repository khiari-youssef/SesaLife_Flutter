import 'package:core/core_data/data_access_config.dart';
import 'package:path_provider/path_provider.dart';
import 'package:core/core_utils/Logger.dart';
import 'package:flutter/services.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import 'AppNavigationConfiguration.dart';
import 'dependenciesLoader.dart';

void main() async {
  const List<Locale> supportedLocals = [
    Locale('en'),
    Locale('fr'),
  ];
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory = await getApplicationDocumentsDirectory();
  logger.i(appDocumentDirectory.path);
  await Hive.initFlutter(appDocumentDirectory.path);
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
            color: Theme.of(context).colorScheme.surface,
            darkTheme: designSystemDarkTheme,
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              S.delegate
            ],
            supportedLocales: supportedLocals,
            routerConfig:
                GetIt.instance.get<AppNavigationConfiguration>().config());
      },
    ),
  ));
}
