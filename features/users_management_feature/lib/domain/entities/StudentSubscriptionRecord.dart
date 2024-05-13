import 'dart:ffi';

import 'package:shared_dependencies/shared_dependencies.dart';

part 'StudentSubscriptionRecord.freezed.dart';

@freezed
class StudentSubscriptionRecord with _$StudentSubscriptionRecord {
  const factory StudentSubscriptionRecord(
      {required String id,
      required String annualSubscriptionModelID,
      required String referencedStudentID,
      Long? timestamp,
      required DateTime periodStartDate,
      required DateTime periodEndDate,
      required Int expectedPaymentAmount,
      Int? actualPaymentAmount,
      required String paymentMethod,
      required String signature}) = _StudentSubscriptionRecord;
}
