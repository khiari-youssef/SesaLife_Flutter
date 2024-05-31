import 'package:core/core_domain/entities/SesameClass.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

part 'SesameSubject.freezed.dart';

@freezed
class SesameSubject with _$SesameSubject {
  const factory SesameSubject(
      {required String id,
      required String label,
      required String description,
      required String moduleId,
      required SesameClass sesameClass,
      required double coeficient}) = _SesameSubject;
}
