part of 'subscription_payment_interface_bloc.dart';

enum CreditCardInputError { required, invalid, none }

class CreditCardInputState<DataType> {
  final DataType data;
  final CreditCardInputError? brokenConstraint;
  const CreditCardInputState({required this.data, this.brokenConstraint});

  bool isValid() => brokenConstraint == CreditCardInputError.none;
}

@freezed
@immutable
sealed class SubscriptionPaymentInterfaceBlocState
    with _$SubscriptionPaymentInterfaceBlocState {
  const factory SubscriptionPaymentInterfaceBlocState(
      {required CreditCardInputState ccNumberState,
      required CreditCardInputState ccHolderNameState,
      required CreditCardInputState ccExpiryDateState,
      required CreditCardInputState ccCVVState,
      required bool hasSavedCCdata}) = _SubscriptionPaymentInterfaceBlocState;
}
