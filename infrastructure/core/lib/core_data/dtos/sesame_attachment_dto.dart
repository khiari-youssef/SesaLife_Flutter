import 'package:shared_dependencies/shared_dependencies.dart';

part 'sesame_attachment_dto.g.dart';

@JsonSerializable()
class SesameAttachmentDTO {
  final String uri;
  final String type;
  SesameAttachmentDTO(this.uri, this.type);

  factory SesameAttachmentDTO.fromJson(Map<String, dynamic> json) =>
      _$SesameAttachmentDTOFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$SesameAttachmentDTOToJson(this);
}
