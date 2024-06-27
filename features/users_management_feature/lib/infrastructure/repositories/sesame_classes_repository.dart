import 'package:core/core_domain/entities/entities.dart';

abstract interface class SesameClassesRepositoryContract {
  Future<List<SesameClass>> querySesameClasses(
      {String? name, String? level, String? group});
}

class SesameClassesRepository implements SesameClassesRepositoryContract {
  @override
  Future<List<SesameClass>> querySesameClasses(
      {String? name, String? level, String? group}) async {
    return [];
  }
}
