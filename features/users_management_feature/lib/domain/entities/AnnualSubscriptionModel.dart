import 'dart:ffi';

import 'package:shared_dependencies/shared_dependencies.dart';

part 'AnnualSubscriptionModel.freezed.dart';

@freezed
class AnnualSubscriptionModel with _$AnnualSubscriptionModel {
  const factory AnnualSubscriptionModel({
    required String id,
    required String name,
    Int? upFrontFee,
    required Map<String, Int> paymentParts,
  }) = _AnnualSubscriptionModel;
}
