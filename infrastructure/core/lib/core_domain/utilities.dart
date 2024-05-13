import 'package:intl/intl.dart';

final DateFormat dateFormat = DateFormat("dd/MM/yyyy");
final DateFormat timeFormat = DateFormat("h\\hm");

extension StringDateTimeExtension on String {}

extension DateTimeExtension on DateTime {
  String toDisplayDate() {
    return dateFormat.format(this);
  }

  String toDisplayTime() {
    return timeFormat.format(this);
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
