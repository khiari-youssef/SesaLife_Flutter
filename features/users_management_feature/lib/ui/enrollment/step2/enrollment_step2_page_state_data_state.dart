import 'package:core/core_domain/form_text_validation_state.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

part 'enrollment_step2_page_state_data_state.freezed.dart';

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
