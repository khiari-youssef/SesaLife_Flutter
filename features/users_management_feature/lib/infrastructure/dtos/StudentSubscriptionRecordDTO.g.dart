// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'StudentSubscriptionRecordDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentSubscriptionRecordDTO _$StudentSubscriptionRecordDTOFromJson(
        Map<String, dynamic> json) =>
    StudentSubscriptionRecordDTO(
      json['id'] as String,
      json['annualSubscriptionModelID'] as String,
      json['referencedStudentID'] as String,
      (json['timestamp'] as num?)?.toInt(),
      json['periodStartDate'] as String,
      json['periodEndDate'] as String,
      (json['expectedPaymentAmount'] as num).toInt(),
      (json['actualPaymentAmount'] as num?)?.toInt(),
      json['paymentMethod'] as String,
      json['signature'] as String,
    );

Map<String, dynamic> _$StudentSubscriptionRecordDTOToJson(
        StudentSubscriptionRecordDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'annualSubscriptionModelID': instance.annualSubscriptionModelID,
      'referencedStudentID': instance.referencedStudentID,
      'timestamp': instance.timestamp,
      'periodStartDate': instance.periodStartDate,
      'periodEndDate': instance.periodEndDate,
      'expectedPaymentAmount': instance.expectedPaymentAmount,
      'actualPaymentAmount': instance.actualPaymentAmount,
      'paymentMethod': instance.paymentMethod,
      'signature': instance.signature,
    };
