import 'package:core/core_domain/FormTextValidationState.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/domain/entities/SesameUser.dart';

part 'EnrollmentStep2PageStateDataState.freezed.dart';

@freezed
class EnrollmentStep2PageStateDataState
    with _$EnrollmentStep2PageStateDataState {
  factory EnrollmentStep2PageStateDataState(
          {required FormTextValidationState firstNameState,
          int? selectedSexIndex,
          required FormTextValidationState birthDateState,
          required FormTextValidationState diplomaState}) =
      _EnrollmentStep2PageStateDataState;
}
