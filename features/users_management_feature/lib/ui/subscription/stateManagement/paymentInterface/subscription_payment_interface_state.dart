part of 'subscription_payment_interface_bloc.dart';

enum CreditCardInputErrorConstraint { required, invalid }

@freezed
@immutable
sealed class SubscriptionPaymentInterfaceBlocState
    with _$SubscriptionPaymentInterfaceBlocState {
  const factory SubscriptionPaymentInterfaceBlocState.creditCardNumberFormatState(
          String ccNumber, CreditCardInputErrorConstraint? brokenConstraint) =
      _creditCardNumberFormatState;
  const factory SubscriptionPaymentInterfaceBlocState.creditCardHolderNameFormatState(
          String name, CreditCardInputErrorConstraint? brokenConstraint) =
      _creditCardHolderNameFormatState;
  const factory SubscriptionPaymentInterfaceBlocState.creditCardCVVFormatState(
          String cvv, CreditCardInputErrorConstraint? brokenConstraint) =
      _creditCardCVVFormatState;
  const factory SubscriptionPaymentInterfaceBlocState.creditCardExpiryDateFormatState(
          String date, CreditCardInputErrorConstraint? brokenConstraint) =
      _creditCardExpiryDateFormatState;

  const factory SubscriptionPaymentInterfaceBlocState.allStateCleared() =
      _allStateCleared;
}
