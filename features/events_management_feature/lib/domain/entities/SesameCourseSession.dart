import 'package:events_management_feature/domain/entities/SesameExamSession.dart';

class SesameCourseSession extends SesameExamSession {
  final DateTime firstHalfEndDateTime;
  final DateTime secondHalfStartDateTime;
  final DateTime secondHalfEndDateTime;
  SesameCourseSession(
      {required this.firstHalfEndDateTime,
      required this.secondHalfEndDateTime,
      required this.secondHalfStartDateTime,
      required super.examEndDate,
      required super.rules,
      required super.id,
      required super.subject,
      required super.teacher,
      required super.date,
      required super.toleratedDelayInMinutes,
      required super.roomID,
      required super.sessionClass,
      required super.presentStudents,
      required super.eliminatedStudents,
      required super.sessionQrCode,
      required super.attachments,
      required super.uploadRepository});
}
