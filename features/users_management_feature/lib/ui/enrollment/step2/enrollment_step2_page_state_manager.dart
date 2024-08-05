import 'package:core/exports.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import 'enrollment_step2_page_state_data_state.dart';

class EnrollmentStep2PageStateStateManager
    extends Cubit<EnrollmentStep2PageStateDataState> {
  EnrollmentStep2PageStateStateManager(super.initialState);

  void updateSelectedSexIndex(int? index) {
    emit(state.copyWith(selectedSexIndex: index));
  }

  void updateFirstNameState(String firstName) {
    if (firstName.isEmpty) {
      emit(state.copyWith(
          firstNameState: const FormTextValidationState.invalid(
              FormTextInvalidStateType.required)));
    } else {
      emit(state.copyWith(
          firstNameState: const FormTextValidationState.valid()));
    }
  }

  void updateBirthdateState(String birthdate) {
    if (birthdate.isEmpty) {
      emit(state.copyWith(
          birthDateState: const FormTextValidationState.invalid(
              FormTextInvalidStateType.required)));
    } else {
      emit(state.copyWith(
          birthDateState: birthdate.hasSesameStdDateFormat()
              ? const FormTextValidationState.valid()
              : const FormTextValidationState.invalid(
                  FormTextInvalidStateType.format)));
    }
  }

  void updateDiplomaState(String diploma) {
    if (diploma.isEmpty) {
      emit(state.copyWith(
          diplomaState: const FormTextValidationState.invalid(
              FormTextInvalidStateType.required)));
    } else {
      emit(state.copyWith(diplomaState: const FormTextValidationState.valid()));
    }
  }

  bool isGlobalStateValid() =>
      state.firstNameState == const FormTextValidationState.valid() &&
      state.selectedSexIndex != null &&
      state.birthDateState == const FormTextValidationState.valid() &&
      state.diplomaState == const FormTextValidationState.valid();
}
