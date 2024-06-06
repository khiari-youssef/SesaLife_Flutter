import 'package:core/exports.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

part 'sesame_session_dto.g.dart';

@JsonSerializable()
class SesameSessionDTO {
  final String id;
  final SesameSubjectDTO subject;
  final UserProfilePreviewDTO teacher;
  final String startDateTime;
  final String endDateTime;
  final int? toleratedDelayInMinutes;
  final String roomID;
  final SesameClassDTO sessionClass;
  final List<UserProfilePreviewDTO>? presentStudents;
  final List<UserProfilePreviewDTO>? eliminatedStudents;
  final String? sessionQrCode;
  final List<SesameAttachmentDTO>? attachments;
  final SesameUploadRepositoryDTO? uploadRepository;
  final Map<String, dynamic> sessionTypeData;
  SesameSessionDTO(
      {required this.id,
      required this.subject,
      required this.teacher,
      required this.startDateTime,
      required this.endDateTime,
      required this.toleratedDelayInMinutes,
      required this.roomID,
      required this.sessionClass,
      required this.presentStudents,
      required this.eliminatedStudents,
      required this.sessionQrCode,
      required this.attachments,
      this.uploadRepository,
      required this.sessionTypeData});

  factory SesameSessionDTO.fromJson(Map<String, dynamic> json) =>
      _$SesameSessionDTOFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$SesameSessionDTOToJson(this);
}
