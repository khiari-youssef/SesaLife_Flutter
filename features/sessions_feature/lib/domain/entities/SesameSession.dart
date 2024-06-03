import 'package:core/exports.dart';

abstract class SesameSession {
  final String id;
  final SesameSubject subject;
  final UserProfilePreview teacher;
  final DateTime date;
  final int toleratedDelayInMinutes;
  final String roomID;
  final SesameClass sessionClass;
  final List<UserProfilePreview> presentStudents;
  final List<UserProfilePreview> eliminatedStudents;
  final String sessionQrCode;
  final List<SesameAttachment> attachments;
  final SesameUploadRepository? uploadRepository;
  SesameSession(
      {required this.id,
      required this.subject,
      required this.teacher,
      required this.date,
      required this.toleratedDelayInMinutes,
      required this.roomID,
      required this.sessionClass,
      required this.presentStudents,
      required this.eliminatedStudents,
      required this.sessionQrCode,
      required this.attachments,
      this.uploadRepository});

  String getDisplayDate() {
    return date.toDisplayDate();
  }

  bool canNoLongerTolerateDelay() {
    return DateTime.now().isAfter(
        date.copyWith(minute: (date.minute + toleratedDelayInMinutes)));
  }
}
