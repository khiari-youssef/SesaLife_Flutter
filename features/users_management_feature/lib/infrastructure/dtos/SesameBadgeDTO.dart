import 'package:shared_dependencies/shared_dependencies.dart';

part 'SesameBadgeDTO.g.dart';

@HiveType(typeId: 7)
@JsonSerializable()
class SesameBadgeDTO {
  @HiveField(0)
  final String creationDate;
  @HiveField(1)
  final String expirationDate;
  @HiveField(2)
  final String signature;
  SesameBadgeDTO(
      {required this.creationDate,
      required this.expirationDate,
      required this.signature});

  factory SesameBadgeDTO.fromJson(Map<String, dynamic> json) =>
      _$SesameBadgeDTOFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$SesameBadgeDTOToJson(this);
}
