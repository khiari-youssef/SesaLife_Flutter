import 'package:shared_dependencies/shared_dependencies.dart';

extension DataAccessDependenciesLoader on GetIt {
  void loadDataAccessConfiguration() async {
    registerSingleton(Dio(BaseOptions()));
    await Hive.initFlutter();
  }
}
