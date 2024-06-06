import 'package:shared_dependencies/shared_dependencies.dart';

part 'sesame_upload_repository_dto.g.dart';

@JsonSerializable()
class SesameUploadRepositoryDTO {
  final String baseUrl;
  final String moduleBucket;
  final String subjectBucket;
  final String classBucket;
  final String contentName;
  SesameUploadRepositoryDTO(
      {required this.baseUrl,
      required this.moduleBucket,
      required this.subjectBucket,
      required this.classBucket,
      required this.contentName});

  factory SesameUploadRepositoryDTO.fromJson(Map<String, dynamic> json) =>
      _$SesameUploadRepositoryDTOFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$SesameUploadRepositoryDTOToJson(this);
}
