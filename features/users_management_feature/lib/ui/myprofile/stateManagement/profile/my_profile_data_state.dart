import 'package:core/core_domain/domain_error_type.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/domain/entities/SesameUser.dart';

part 'my_profile_data_state.freezed.dart';

@freezed
class MyProfileDataState with _$MyProfileDataState {
  const factory MyProfileDataState.success(SesameUser sesameUser) = _$success;
  const factory MyProfileDataState.loading() = _$loading;
  const factory MyProfileDataState.error(DomainErrorType errorType) = _$error;
}
