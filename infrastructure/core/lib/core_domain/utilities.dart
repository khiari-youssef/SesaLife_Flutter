import 'package:intl/intl.dart';

final DateFormat sesameStandardDateFormat = DateFormat("dd/MM/yyyy");
final DateFormat sesameStandardTimeFormat = DateFormat("h:mm a");

const _emailPattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
    r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
    r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
    r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
    r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
    r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
    r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';

const _lettersPattern = r'^[a-zA-Z]+$';

extension FormValidationExtension on String {
  bool hasSesameStdDateFormat() {
    return sesameStandardDateFormat.tryParse(this) != null;
  }

  bool hasValidEmailFormat() {
    return RegExp(_emailPattern).hasMatch(this);
  }

  bool hasOnlyLetters() {
    return RegExp(_lettersPattern).hasMatch(replaceAll(" ", ""));
  }
}

extension DateTimeExtension on DateTime {
  String toDisplayDate() {
    return sesameStandardDateFormat.format(this);
  }

  String toDisplayTime() {
    return sesameStandardTimeFormat.format(this);
  }

  bool areDatesOnlyEqual(DateTime other) {
    return day == other.day && month == other.month && year == other.year;
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
