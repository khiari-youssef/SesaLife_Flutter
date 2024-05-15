import 'package:intl/intl.dart';

final DateFormat sesameStandardDateFormat = DateFormat("dd/MM/yyyy");
final DateFormat sesameStandardTimeFormat = DateFormat("h\\hm");

extension StringDateTimeExtension on String {}

extension DateTimeExtension on DateTime {
  String toDisplayDate() {
    return sesameStandardDateFormat.format(this);
  }

  String toDisplayTime() {
    return sesameStandardTimeFormat.format(this);
  }
}

extension DateTimeParsingExtension on String {
  DateTime? parseIsoDateTime() {
    try {
      return DateTime.parse(this);
    } on Exception {
      return null;
    }
  }

  DateTime? parseIsoTime() {
    try {
      return DateFormat('HH:mm a').parse(this);
    } on Exception {
      return null;
    }
  }
}
