import 'package:shared_dependencies/shared_dependencies.dart';

part 'StudentSubscriptionRecordDTO.g.dart';

@JsonSerializable()
class StudentSubscriptionRecordDTO extends HiveObject {
  final String id;
  final String annualSubscriptionModelID;
  final String referencedStudentID;
  final int? timestamp;
  final String periodStartDate;
  final String periodEndDate;
  final int expectedPaymentAmount;
  final int? actualPaymentAmount;
  final String paymentMethod;
  final String signature;

  StudentSubscriptionRecordDTO(
      this.id,
      this.annualSubscriptionModelID,
      this.referencedStudentID,
      this.timestamp,
      this.periodStartDate,
      this.periodEndDate,
      this.expectedPaymentAmount,
      this.actualPaymentAmount,
      this.paymentMethod,
      this.signature);

  factory StudentSubscriptionRecordDTO.fromJson(Map<String, dynamic> json) =>
      _$StudentSubscriptionRecordDTOFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$StudentSubscriptionRecordDTOToJson(this);
}
