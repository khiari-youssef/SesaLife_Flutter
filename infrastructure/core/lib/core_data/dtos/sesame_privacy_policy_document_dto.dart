import 'package:core/core_data/dtos/app_rules_section_dtos.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

part 'sesame_privacy_policy_document_dto.g.dart';

@JsonSerializable()
class SesamePrivacyPolicyDocumentDTO {
  @JsonKey(name: "local")
  final String local;
  @JsonKey(name: "last_time_updated")
  final String? lastTimeUpdated;
  @JsonKey(name: "description")
  final String description;
  @JsonKey(name: "summary")
  final List<String> summary;
  @JsonKey(name: "sections")
  final List<AppRulesSectionDTO> sections;
  SesamePrivacyPolicyDocumentDTO(this.local, this.lastTimeUpdated,
      this.description, this.summary, this.sections);

  factory SesamePrivacyPolicyDocumentDTO.fromJson(Map<String, dynamic> json) =>
      _$SesamePrivacyPolicyDocumentDTOFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$SesamePrivacyPolicyDocumentDTOToJson(this);
}
