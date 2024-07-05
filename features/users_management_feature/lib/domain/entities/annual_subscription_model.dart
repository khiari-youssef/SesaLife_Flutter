import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/domain/entities/sesame_payment_transaction.dart';

part 'annual_subscription_model.freezed.dart';

@freezed
class AnnualSubscriptionModel with _$AnnualSubscriptionModel {
  const factory AnnualSubscriptionModel(
          {required String id,
          required String name,
          required List<SesamePaymentTransaction> transactions}) =
      _AnnualSubscriptionModel;
}
