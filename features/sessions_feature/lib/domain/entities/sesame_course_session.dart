import 'package:core/core_domain/utilities.dart';
import 'package:sessions_feature/domain/entities/sesame_session.dart';

class SesameCourseSession extends SesameSession {
  final DateTime firstHalfEndDateTime;
  final DateTime secondHalfStartDateTime;
  SesameCourseSession({
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
    super.uploadRepository,
    super.onlineMeetingURI,
    super.sessionContent,
    required this.firstHalfEndDateTime,
    required this.secondHalfStartDateTime,
  });

  String getDisplayFirstHalfEndDateTime() {
    return firstHalfEndDateTime.toDisplayTime();
  }

  String getDisplaySecondHalfStartDateTime() {
    return secondHalfStartDateTime.toDisplayTime();
  }
}
