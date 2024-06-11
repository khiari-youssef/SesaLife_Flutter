import 'package:core/exports.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

part 'student_subscription_record.freezed.dart';

class UnPaidStudentSubscriptionRecord {
  final String id;
  final String annualSubscriptionModelID;
  final String referencedStudentID;
  final DateTime periodStartDate;
  final DateTime periodEndDate;
  final int expectedPaymentAmount;
  final String defaultCurrencyCode;
  final String signature;
  UnPaidStudentSubscriptionRecord(
      {required this.id,
      required this.annualSubscriptionModelID,
      required this.referencedStudentID,
      required this.periodStartDate,
      required this.periodEndDate,
      required this.expectedPaymentAmount,
      required this.defaultCurrencyCode,
      required this.signature});

  String periodDisplayFormat() =>
      "${periodStartDate.toDisplayDate()} - ${periodEndDate.toDisplayDate()}";

  bool isPaymentOverdue() => DateTime.now().isAfter(periodEndDate);
}

class PaidStudentSubscriptionRecord extends UnPaidStudentSubscriptionRecord {
  final int actualPaymentAmount;
  final String paymentMethod;
  final String transactionID;
  final DateTime paymentDate;
  final SesameAttachment paymentReceipt;
  PaidStudentSubscriptionRecord(
      {required this.actualPaymentAmount,
      required this.paymentMethod,
      required this.transactionID,
      required this.paymentDate,
      required this.paymentReceipt,
      required super.id,
      required super.annualSubscriptionModelID,
      required super.referencedStudentID,
      required super.periodStartDate,
      required super.periodEndDate,
      required super.expectedPaymentAmount,
      required super.defaultCurrencyCode,
      required super.signature});
}

@freezed
class StudentSubscriptionRecord with _$StudentSubscriptionRecord {
  const factory StudentSubscriptionRecord.unPaid(
      {required UnPaidStudentSubscriptionRecord data}) = _UnPaid;

  const factory StudentSubscriptionRecord.paid(
      {required PaidStudentSubscriptionRecord data}) = _Paid;
}
