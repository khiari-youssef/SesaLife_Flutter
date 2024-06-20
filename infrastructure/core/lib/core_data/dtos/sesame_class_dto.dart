import 'package:shared_dependencies/shared_dependencies.dart';

part 'sesame_class_dto.g.dart';

@HiveType(typeId: 6)
@JsonSerializable()
class SesameClassDTO extends HiveObject {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String level;
  @HiveField(3)
  final String group;

  SesameClassDTO(
      {required this.id,
      required this.name,
      required this.level,
      required this.group});

  @override
  String toString() => id;

  factory SesameClassDTO.fromJson(Map<String, dynamic> json) =>
      _$SesameClassDTOFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$SesameClassDTOToJson(this);
}
