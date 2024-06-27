import 'package:core/core_domain/DomainUseCaseProtocol.dart';
import 'package:core/core_domain/entities/entities.dart';

import '../../infrastructure/repositories/sesame_classes_repository.dart';

enum SesameClassSearchFilter { name, level, group, all }

class SesameClassesSearchQuery {
  final String? textQuery;
  final SesameClassSearchFilter sesameClassSearchFilter;
  SesameClassesSearchQuery(
      {this.textQuery,
      this.sesameClassSearchFilter = SesameClassSearchFilter.all});
}

class SesameClassesSearchUseCase
    implements
        DomainUseCaseProtocol<SesameClassesSearchQuery,
            Future<List<SesameClass>>> {
  final SesameClassesRepositoryContract sesameClassesRepositoryContract;
  SesameClassesSearchUseCase(this.sesameClassesRepositoryContract);

  @override
  Future<List<SesameClass>> execute(SesameClassesSearchQuery input) {
    return sesameClassesRepositoryContract.querySesameClasses(
        name: input.sesameClassSearchFilter == SesameClassSearchFilter.name
            ? input.textQuery
            : null,
        level: input.sesameClassSearchFilter == SesameClassSearchFilter.level
            ? input.textQuery
            : null,
        group: input.sesameClassSearchFilter == SesameClassSearchFilter.group
            ? input.textQuery
            : null);
  }
}
