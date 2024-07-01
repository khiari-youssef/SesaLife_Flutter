import 'sesame_subject.dart';

class SesameModule {
  final String id;
  final String name;
  final String description;
  final String coefficient;
  final List<SesameSubject> subjects;
  SesameModule(
      {required this.subjects,
      required this.id,
      required this.name,
      required this.description,
      required this.coefficient});
}
