import 'package:shared_dependencies/shared_dependencies.dart';

import '../../../../domain/services/credit_card_input_validation_service.dart';

part 'subscription_payment_interface_event.dart';
part 'subscription_payment_interface_state.dart';
part 'subscription_payment_interface_bloc.freezed.dart';

class SubscriptionPaymentInterfaceBloc extends Bloc<
    SubscriptionPaymentInterfaceEvent, SubscriptionPaymentInterfaceBlocState> {
  SubscriptionPaymentInterfaceBloc()
      : super(const SubscriptionPaymentInterfaceBlocState(
            ccNumberState: CreditCardInputState(data: ""),
            ccHolderNameState: CreditCardInputState(data: ""),
            ccExpiryDateState: CreditCardInputState(data: ""),
            ccCVVState: CreditCardInputState(data: ""))) {
    CreditCardInputValidationService ccValidationService = GetIt.instance.get();

    on<SubscriptionPaymentInterfaceEvent>((event, emit) {
      event.when(checkCreditCardNumberFormat: (data) {
        CreditCardInputError? brokenConstraint = data.isEmpty
            ? CreditCardInputError.required
            : (ccValidationService.isCreditCardNumberValid(data)
                ? CreditCardInputError.none
                : CreditCardInputError.invalid);
        emit(state.copyWith(
            ccNumberState: CreditCardInputState(
                data: data, brokenConstraint: brokenConstraint)));
      }, checkCreditCardHolderNameFormat: (data) {
        CreditCardInputError? brokenConstraint = data.isEmpty
            ? CreditCardInputError.required
            : (ccValidationService.isCCHolderNameDValid(data)
                ? CreditCardInputError.none
                : CreditCardInputError.invalid);
        emit(state.copyWith(
            ccHolderNameState: CreditCardInputState(
                data: data, brokenConstraint: brokenConstraint)));
      }, checkCreditCardCVVFormat: (data) {
        CreditCardInputError? brokenConstraint = data.isEmpty
            ? CreditCardInputError.required
            : (ccValidationService.isCVValid(data)
                ? CreditCardInputError.none
                : CreditCardInputError.invalid);
        emit(state.copyWith(
            ccCVVState: CreditCardInputState(
                data: data, brokenConstraint: brokenConstraint)));
      }, checkCreditCardExpiryDateFormat: (data) {
        CreditCardInputError? brokenConstraint = data.isEmpty
            ? CreditCardInputError.required
            : (ccValidationService.isCCExpiryDateValid(data)
                ? CreditCardInputError.none
                : CreditCardInputError.invalid);
        emit(state.copyWith(
            ccExpiryDateState: CreditCardInputState(
                data: data, brokenConstraint: brokenConstraint)));
      });
    });
  }

  bool areAllCreditCardInputStatesValid() {
    return state.ccHolderNameState.isNotValid() &&
        state.ccNumberState.isNotValid() &&
        state.ccCVVState.isNotValid() &&
        state.ccExpiryDateState.isNotValid();
  }
}
