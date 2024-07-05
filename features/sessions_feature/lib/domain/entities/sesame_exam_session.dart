import 'sesame_session.dart';

class SesameExamSession extends SesameSession {
  final DateTime examEndDate;
  final List<String> rules;
  SesameExamSession(
      {required this.examEndDate,
      required this.rules,
      required super.id,
      required super.subject,
      required super.teacher,
      required super.startDateTime,
      required super.endDateTime,
      required super.toleratedDelayInMinutes,
      required super.roomID,
      required super.sessionClass,
      required super.presentStudents,
      required super.eliminatedStudents,
      required super.sessionQrCode,
      required super.attachments,
      required super.uploadRepository,
      super.onlineMeetingURI,
      super.sessionContent});
}
