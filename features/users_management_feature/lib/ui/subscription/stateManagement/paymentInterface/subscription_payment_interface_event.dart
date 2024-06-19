part of 'subscription_payment_interface_bloc.dart';

@freezed
@immutable
sealed class SubscriptionPaymentInterfaceEvent
    with _$SubscriptionPaymentInterfaceEvent {
  const factory SubscriptionPaymentInterfaceEvent.checkCreditCardNumberFormat(
      String ccNumber) = _checkCreditCardNumberFormat;
  const factory SubscriptionPaymentInterfaceEvent.checkCreditCardHolderNameFormat(
      String name) = _checkCreditCardHolderNameFormat;
  const factory SubscriptionPaymentInterfaceEvent.checkCreditCardCVVFormat(
      String cvv) = _checkCreditCardCVVFormat;
  const factory SubscriptionPaymentInterfaceEvent.checkCreditCardExpiryDateFormat(
      String date) = _checkCreditCardExpiryDateFormat;

  const factory SubscriptionPaymentInterfaceEvent.saveCCdataToSecureStorage() =
      _saveCCdataToSecureStorage;
  const factory SubscriptionPaymentInterfaceEvent.loadCCdataFromSecureStorage() =
      _loadCCdataFromSecureStorage;
  const factory SubscriptionPaymentInterfaceEvent.checkExistingCCdata() =
      _checkExistingCCdata;
}
