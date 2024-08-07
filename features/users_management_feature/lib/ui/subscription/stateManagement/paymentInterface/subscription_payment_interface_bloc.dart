import 'package:core/core_data/localStorage/credit_card_secure_local_storage_interface.dart';
import 'package:core/core_domain/domain_error_type.dart';
import 'package:core/core_domain/domain_use_case_protocol.dart';
import 'package:core/core_utils/logger.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import 'package:users_management_feature/domain/entities/payment_transaction_result.dart';
import 'package:users_management_feature/domain/services/credit_card_input_validation_service.dart';

part 'subscription_payment_interface_bloc.freezed.dart';
part 'subscription_payment_interface_event.dart';
part 'subscription_payment_interface_state.dart';

class SubscriptionPaymentInterfaceBloc extends Bloc<
    SubscriptionPaymentInterfaceEvent, SubscriptionPaymentInterfaceBlocState> {
  CreditCardInputValidationService ccValidationService = GetIt.instance.get();
  CreditCardSecureLocalStorageInterface ccSecureStorage =
      GetIt.instance.get(instanceName: "CreditCardSecureStorageImpl");
  DomainUseCaseProtocol<CreditCardDetails,
          Future<SesamePaymentTransactionResult>> useCase =
      GetIt.instance.get(instanceName: "CreditCardPaymentUseCase");

  SubscriptionPaymentInterfaceBloc()
      : super(const SubscriptionPaymentInterfaceBlocState(
            ccNumberState: CreditCardInputState(data: ""),
            ccHolderNameState: CreditCardInputState(data: ""),
            ccExpiryDateState: CreditCardInputState(data: ""),
            ccCVVState: CreditCardInputState(data: ""),
            transactionState:
                PaymentTransactionState.paymentTransactionNotStarted(),
            hasSavedCCdata: false)) {
    on<_checkCreditCardNumberFormat>((event, emit) async {
      emit(state.copyWith(
          ccNumberState: CreditCardInputState(
              data: event.ccNumber,
              brokenConstraint: checkCCNumberError(event.ccNumber)),
          hasSavedCCdata: false));
    });
    on<_checkCreditCardHolderNameFormat>((event, emit) async {
      emit(state.copyWith(
          ccHolderNameState: CreditCardInputState(
              data: event.name,
              brokenConstraint: checkCCNameHolderError(event.name)),
          hasSavedCCdata: false));
    });
    on<_checkCreditCardCVVFormat>((event, emit) async {
      emit(state.copyWith(
          ccCVVState: CreditCardInputState(
              data: event.cvv, brokenConstraint: checkCVVError(event.cvv)),
          hasSavedCCdata: false));
    });
    on<_checkCreditCardExpiryDateFormat>((event, emit) async {
      emit(state.copyWith(
          ccExpiryDateState: CreditCardInputState(
              data: event.date,
              brokenConstraint: checkCCExpiryDateError(event.date)),
          hasSavedCCdata: false));
    });
    on<_saveCCdataToSecureStorage>((event, emit) async {
      ccSecureStorage.saveCreditCardData(CreditCardDetails(
          ccHolderName: state.ccHolderNameState.data,
          ccNumber: state.ccNumberState.data,
          cvv: state.ccCVVState.data,
          ccExpiryDate: state.ccExpiryDateState.data,
          ccEmail: ""));
    });
    on<_loadCCdataFromSecureStorage>((event, emit) async {
      CreditCardDetails? data = await ccSecureStorage.readCreditCardData();
      logger.i(data?.ccNumber);
      emit(state.copyWith(
          ccNumberState: CreditCardInputState(
              data: data?.ccNumber ?? "",
              brokenConstraint: checkCCNumberError(data?.ccNumber ?? "")),
          ccCVVState: CreditCardInputState(
              data: data?.cvv ?? "",
              brokenConstraint: checkCVVError(data?.cvv ?? "")),
          ccExpiryDateState: CreditCardInputState(
              data: data?.ccExpiryDate ?? "",
              brokenConstraint:
                  checkCCExpiryDateError(data?.ccExpiryDate ?? "")),
          ccHolderNameState: CreditCardInputState(
              data: data?.ccHolderName ?? "",
              brokenConstraint:
                  checkCCNameHolderError(data?.ccHolderName ?? "")),
          hasSavedCCdata: false));
    });
    on<_checkExistingCCdata>((event, emit) async {
      bool hasCCdata = await ccSecureStorage.hasSavedCreditCardDetails();
      emit(state.copyWith(hasSavedCCdata: hasCCdata));
    });
    on<_makePayment>((event, emit) async {
      emit(state.copyWith(
          transactionState:
              const PaymentTransactionState.paymentTransactionInProgress()));
      SesamePaymentTransactionResult result =
          await useCase.execute(CreditCardDetails(
        ccHolderName: state.ccHolderNameState.data,
        ccNumber: state.ccNumberState.data,
        cvv: state.ccCVVState.data,
        ccExpiryDate: state.ccExpiryDateState.data,
      ));
      emit(state.copyWith(
          transactionState: PaymentTransactionState.paymentTransactionResult(
              result: result)));
    });
  }

  CreditCardInputError? checkCCExpiryDateError(String date) {
    return date.isEmpty
        ? CreditCardInputError.required
        : (ccValidationService.isCCExpiryDateValid(date)
            ? CreditCardInputError.none
            : CreditCardInputError.invalid);
  }

  CreditCardInputError? checkCVVError(String cvv) {
    return cvv.isEmpty
        ? CreditCardInputError.required
        : (ccValidationService.isCVValid(cvv)
            ? CreditCardInputError.none
            : CreditCardInputError.invalid);
  }

  CreditCardInputError? checkCCNumberError(String ccNumber) {
    return ccNumber.isEmpty
        ? CreditCardInputError.required
        : (ccValidationService.isCreditCardNumberValid(ccNumber)
            ? CreditCardInputError.none
            : CreditCardInputError.invalid);
  }

  CreditCardInputError? checkCCNameHolderError(String ccHolderName) {
    return ccHolderName.isEmpty
        ? CreditCardInputError.required
        : (ccValidationService.isCCHolderNameDValid(ccHolderName)
            ? CreditCardInputError.none
            : CreditCardInputError.invalid);
  }
}
