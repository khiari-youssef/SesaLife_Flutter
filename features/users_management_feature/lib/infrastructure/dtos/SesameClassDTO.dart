import 'package:shared_dependencies/shared_dependencies.dart';

part 'SesameClassDTO.g.dart';

@JsonSerializable()
class SesameClassDTO extends HiveObject {
  final String id;
  final String name;
  final String level;
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
