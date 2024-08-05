// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'annual_subscription_model_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnnualSubscriptionModelDTO _$AnnualSubscriptionModelDTOFromJson(
        Map<String, dynamic> json) =>
    AnnualSubscriptionModelDTO(
      json['id'] as String,
      json['name'] as String,
      (json['upFrontFee'] as num?)?.toInt(),
      Map<String, int>.from(json['paymentParts'] as Map),
    );

Map<String, dynamic> _$AnnualSubscriptionModelDTOToJson(
        AnnualSubscriptionModelDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'upFrontFee': instance.upFrontFee,
      'paymentParts': instance.paymentParts,
    };
