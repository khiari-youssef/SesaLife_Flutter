import 'package:core/core_domain/DomainUseCaseProtocol.dart';
import 'package:core/core_domain/entities/entities.dart';

import '../../infrastructure/repositories/sesame_classes_repository.dart';
import '../entities/sesame_class_groups.dart';

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
            Future<List<SesameClassGroups>>> {
  final SesameClassesRepositoryContract sesameClassesRepositoryContract;
  SesameClassesSearchUseCase(this.sesameClassesRepositoryContract);

  @override
  Future<List<SesameClassGroups>> execute(SesameClassesSearchQuery input) {
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
