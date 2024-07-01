import 'package:shared_dependencies/shared_dependencies.dart';

part 'app_rules_section_dtos.g.dart';

@JsonSerializable()
class AppRulesSubSectionDTO {
  @JsonKey(name: "subsection_name")
  final String name;
  @JsonKey(name: "content")
  final List<String> content;
  AppRulesSubSectionDTO({required this.name, required this.content});

  factory AppRulesSubSectionDTO.fromJson(Map<String, dynamic> json) =>
      _$AppRulesSubSectionDTOFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AppRulesSubSectionDTOToJson(this);
}

@JsonSerializable()
class AppRulesSectionDTO {
  @JsonKey(name: "section_name")
  final String name;
  @JsonKey(name: "sub_sections")
  final List<AppRulesSubSectionDTO> subSections;
  AppRulesSectionDTO({required this.name, required this.subSections});

  factory AppRulesSectionDTO.fromJson(Map<String, dynamic> json) =>
      _$AppRulesSectionDTOFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AppRulesSectionDTOToJson(this);
}
