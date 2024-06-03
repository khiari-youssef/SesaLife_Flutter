import 'package:sessions_feature/domain/entities/SesameSession.dart';

class SesameCourseSession extends SesameSession {
  final DateTime firstHalfEndDateTime;
  final DateTime secondHalfStartDateTime;
  final DateTime secondHalfEndDateTime;
  SesameCourseSession({
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
    super.uploadRepository,
    required this.firstHalfEndDateTime,
    required this.secondHalfEndDateTime,
    required this.secondHalfStartDateTime,
  });
}
