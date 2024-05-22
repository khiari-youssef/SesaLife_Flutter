import 'package:shared_dependencies/shared_dependencies.dart';

part 'SesameRoleDTO.g.dart';

@JsonSerializable()
class SesamePermissionDTO extends HiveObject {
  final String id;
  final String label;
  final String state;
  SesamePermissionDTO(
      {required this.id, required this.label, required this.state});

  factory SesamePermissionDTO.fromJson(Map<String, dynamic> json) =>
      _$SesamePermissionDTOFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$SesamePermissionDTOToJson(this);
}

@JsonSerializable()
class SesameRoleDTO extends HiveObject {
  final String id;
  final List<SesamePermissionDTO> permissions;
  SesameRoleDTO({required this.id, required this.permissions});

  static SesameRoleDTO defaultRole =
      SesameRoleDTO(id: "default", permissions: List.empty());

  factory SesameRoleDTO.fromJson(Map<String, dynamic> json) =>
      _$SesameRoleDTOFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$SesameRoleDTOToJson(this);
}
