import 'package:core/core_domain/entities/entities.dart';

import '../../domain/entities/sesame_class_groups.dart';

abstract interface class SesameClassesRepositoryContract {
  Future<List<SesameClassGroups>> querySesameClasses(
      {String? name, String? level, String? group});
}

class SesameClassesRepository implements SesameClassesRepositoryContract {
  @override
  Future<List<SesameClassGroups>> querySesameClasses(
      {String? name, String? level, String? group}) async {
    return [
      SesameClassGroups(className: "ingta-4", groups: [
        SesameClass(id: "ingta-4a", name: "ingta", level: "4", group: "a"),
        SesameClass(id: "ingta-4b", name: "ingta", level: "4", group: "b"),
        SesameClass(id: "ingta-4c", name: "ingta", level: "4", group: "c")
      ]),
      SesameClassGroups(className: "ingta-3", groups: [
        SesameClass(id: "ingta-3a", name: "ingta", level: "3", group: "a"),
        SesameClass(id: "ingta-3b", name: "ingta", level: "3", group: "b"),
        SesameClass(id: "ingta-3c", name: "ingta", level: "3", group: "c")
      ]),
      SesameClassGroups(className: "ing-2", groups: [
        SesameClass(id: "ing-2a", name: "ing", level: "2", group: "a"),
        SesameClass(id: "ing-2b", name: "ing", level: "2", group: "b"),
        SesameClass(id: "ing-2c", name: "ing", level: "2", group: "c")
      ])
    ];
  }
}
