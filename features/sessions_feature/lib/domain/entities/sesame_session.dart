import 'package:core/exports.dart';

abstract class SesameSession {
  final String id;
  final SesameSubject subject;
  final UserProfilePreview teacher;
  final DateTime startDateTime;
  final DateTime endDateTime;
  final int toleratedDelayInMinutes;
  final String roomID;
  final SesameClass sessionClass;
  final List<UserProfilePreview> presentStudents;
  final List<UserProfilePreview> eliminatedStudents;
  final String sessionQrCode;
  final List<SesameAttachment> attachments;
  final SesameUploadRepository? uploadRepository;
  final String? onlineMeetingURI;
  final Map<String, String>? sessionContent;
  SesameSession(
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
      this.onlineMeetingURI,
      this.sessionContent});

  String getDisplayStartDate() {
    return startDateTime.toDisplayDate();
  }

  String getDisplayStartTime() {
    return startDateTime.toDisplayTime();
  }

  String getDisplayEndDate() {
    return endDateTime.toDisplayDate();
  }

  String getDisplayEndTime() {
    return endDateTime.toDisplayTime();
  }

  bool canNoLongerTolerateDelay() {
    return DateTime.now().isAfter(startDateTime.copyWith(
        minute: (startDateTime.minute + toleratedDelayInMinutes)));
  }
}
