import 'package:core/core_data/dtos/dtos.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

part 'sesame_subject_dto.g.dart';

@JsonSerializable()
class SesameSubjectDTO {
  final String id;
  final String label;
  final String? description;
  final String moduleId;
  final SesameClassDTO sesameClass;
  final double coefficient;
  SesameSubjectDTO(this.id, this.label, this.description, this.moduleId,
      this.sesameClass, this.coefficient);

  factory SesameSubjectDTO.fromJson(Map<String, dynamic> json) =>
      _$SesameSubjectDTOFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$SesameSubjectDTOToJson(this);
}
