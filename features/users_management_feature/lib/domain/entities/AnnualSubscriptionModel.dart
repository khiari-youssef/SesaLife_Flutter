import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/domain/entities/student_subscription_record.dart';

part 'AnnualSubscriptionModel.freezed.dart';

@freezed
class AnnualSubscriptionModel with _$AnnualSubscriptionModel {
  const factory AnnualSubscriptionModel(
          {required String id,
          required String name,
          required List<StudentSubscriptionRecord> transactions}) =
      _AnnualSubscriptionModel;
}
