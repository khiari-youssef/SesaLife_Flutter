import 'package:shared_dependencies/shared_dependencies.dart';

extension DataAccessDependenciesLoader on GetIt {
  void loadDataAccessConfiguration() async {
    await Hive.initFlutter();
    registerSingleton(Dio(BaseOptions()));
  }
}
