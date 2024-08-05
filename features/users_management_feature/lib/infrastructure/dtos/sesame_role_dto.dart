import 'package:shared_dependencies/shared_dependencies.dart';

part 'sesame_role_dto.g.dart';

@HiveType(typeId: 4)
@JsonSerializable()
class SesamePermissionDTO extends HiveObject {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String label;
  @HiveField(2)
  final String state;
  SesamePermissionDTO(
      {required this.id, required this.label, required this.state});

  factory SesamePermissionDTO.fromJson(Map<String, dynamic> json) =>
      _$SesamePermissionDTOFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$SesamePermissionDTOToJson(this);
}

@HiveType(typeId: 5)
@JsonSerializable()
class SesameRoleDTO extends HiveObject {
  @HiveField(3)
  final String id;
  @HiveField(4)
  final List<SesamePermissionDTO> permissions;
  SesameRoleDTO({required this.id, required this.permissions});

  static SesameRoleDTO defaultRole =
      SesameRoleDTO(id: "default", permissions: List.empty());

  factory SesameRoleDTO.fromJson(Map<String, dynamic> json) =>
      _$SesameRoleDTOFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$SesameRoleDTOToJson(this);
}
