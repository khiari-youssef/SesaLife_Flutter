import 'package:shared_dependencies/shared_dependencies.dart';

part 'AnnualSubscriptionModelDTO.g.dart';

@JsonSerializable()
class AnnualSubscriptionModelDTO extends HiveObject {
  final String id;
  final String name;
  final int? upFrontFee;
  final Map<String, int> paymentParts;
  AnnualSubscriptionModelDTO(
      this.id, this.name, this.upFrontFee, this.paymentParts);

  factory AnnualSubscriptionModelDTO.fromJson(Map<String, dynamic> json) =>
      _$AnnualSubscriptionModelDTOFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AnnualSubscriptionModelDTOToJson(this);
}
