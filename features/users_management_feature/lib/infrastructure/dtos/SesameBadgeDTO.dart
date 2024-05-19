import 'package:shared_dependencies/shared_dependencies.dart';

part 'SesameBadgeDTO.g.dart';

@JsonSerializable()
class SesameBadgeDTO {
  final String creationDate;
  final String expirationDate;
  final String signature;
  SesameBadgeDTO(this.creationDate, this.expirationDate, this.signature);

  factory SesameBadgeDTO.fromJson(Map<String, dynamic> json) =>
      _$SesameBadgeDTOFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$SesameBadgeDTOToJson(this);
}
