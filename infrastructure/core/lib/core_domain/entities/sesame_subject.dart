import 'package:core/core_domain/entities/sesame_class.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

part 'sesame_subject.freezed.dart';

@freezed
class SesameSubject with _$SesameSubject {
  const factory SesameSubject(
      {required String id,
      required String label,
      required String description,
      required String moduleId,
      required double coefficient}) = _SesameSubject;
}
