import 'package:shared_dependencies/shared_dependencies.dart';

import '../infrastructure/ports/repositoryContracts/LoginRepositoryContract.dart';
import '../infrastructure/repositories/LoginRepository.dart';

extension repositoriesModule on GetIt {
  void loadRepositoryModule() {
    registerFactory<LoginRepositoryContract>(() => LoginRepository(),
        instanceName: "LoginRepository");
  }
}
