import 'package:core/core_domain/DomainUseCaseProtocol.dart';
import 'package:core/core_domain/entities/entities.dart';

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
        DomainUseCaseProtocol<SesameClassesSearchQuery, List<SesameClass>> {
  @override
  List<SesameClass> execute(SesameClassesSearchQuery input) {
    return [];
  }
}
