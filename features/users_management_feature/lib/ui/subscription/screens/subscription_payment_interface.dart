import 'package:core/exports.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/ui/subscription/screens/subscription_payment_method.dart';
import 'package:users_management_feature/ui/subscription/stateManagement/paymentInterface/subscription_payment_interface_bloc.dart';

import '../../../domain/entities/sesame_payment_transaction.dart';
import '../../navigation/users_navigation_configuration.gr.dart';
import '../components/credit_card_details_storage_request_modal.dart';
import '../components/credit_card_preview.dart';

class SubscriptionPaymentInterfaceState
    extends State<SubscriptionPaymentInterface> {
  bool hasReadTheTermsAndPolicy = false;
  SesameDeviceAuthManager authManager = GetIt.instance.get();
  CreditCardType? creditCardType;
  TextEditingController cardHolderNameController = TextEditingController();
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController cardExpiryController = TextEditingController();
  TextEditingController cardCVVController = TextEditingController();
  bool shouldShowCCNumber = false;
  late String lastCreditCardNumberSaved;

  @override
  void initState() {
    super.initState();
    lastCreditCardNumberSaved = cardNumberController.text;
  }

  @override
  Widget build(BuildContext context) {
    return titleScreenBuilder(
      context,
      S.of(context).payment,
      null,
      () {
        AutoRouter.of(context).back();
      },
      Scaffold(
        body: BlocProvider(
          create: (context) => SubscriptionPaymentInterfaceBloc()
            ..add(
                const SubscriptionPaymentInterfaceEvent.checkExistingCCdata()),
          child: BlocConsumer<SubscriptionPaymentInterfaceBloc,
              SubscriptionPaymentInterfaceBlocState>(
            listener: (context, state) {
              SubscriptionPaymentInterfaceBloc localBloc =
                  context.read<SubscriptionPaymentInterfaceBloc>();
              state.transactionState.whenOrNull(
                  paymentTransactionFailed: (type) {
                AutoRouter.of(context).push(SubscriptionPaymentResultRoute(
                    paymentMethod: widget.paymentMethod,
                    paymentTransactionResult: null));
              }, paymentTransactionResult: (result) {
                AutoRouter.of(context).push(SubscriptionPaymentResultRoute(
                    paymentMethod: widget.paymentMethod,
                    paymentTransactionResult: result));
              }, paymentTransactionInProgress: () {
                CircularProgressBarDialog.showAsDialog(context);
              });
              if (state.hasSavedCCdata) {
                showModalBottomSheet<void>(
                    context: context,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12.r),
                            topLeft: Radius.circular(12.r))),
                    builder: (BuildContext context) {
                      return CreditCardDetailsStorageRequestModal(
                        content:
                            S.of(context).payment_credit_card_load_data_request,
                        onPositiveButtonPressed: () {
                          Navigator.pop(context);
                          authManager.requireAuthenticationAsync(context,
                              onActionAuthorized: () {
                            localBloc.add(
                                const SubscriptionPaymentInterfaceEvent
                                    .loadCCdataFromSecureStorage());
                          });
                        },
                        onNegativeButtonPressed: () {
                          Navigator.pop(context);
                        },
                      );
                    });
              }
            },
            builder: (context, state) {
              updateControllers(state);
              return Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.h),
                  child: Material(
                    child: SingleChildScrollView(
                      child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.linear,
                                child: CreditCardPreview(
                                  shouldShowCCNumber: shouldShowCCNumber,
                                  cardType: creditCardType,
                                  cardHolderNameController:
                                      cardHolderNameController,
                                  cardNumberController: cardNumberController,
                                  cardExpirationDateController:
                                      cardExpiryController,
                                )),
                            16.verticalSpace,
                            SesameCustomTextField(
                                keyboardType: TextInputType.text,
                                controller: cardHolderNameController,
                                errorMessage: switch (
                                    state.ccHolderNameState.brokenConstraint) {
                                  CreditCardInputError.required =>
                                    S.of(context).payment_cc_input_required,
                                  CreditCardInputError.invalid => S
                                      .of(context)
                                      .payment_cc_holder_name_input_invalid,
                                  _ => null
                                },
                                placeHolder:
                                    S.of(context).payment_card_holder_name,
                                onChange: (cardHolderName) {
                                  context
                                      .read<SubscriptionPaymentInterfaceBloc>()
                                      .add(SubscriptionPaymentInterfaceEvent
                                          .checkCreditCardHolderNameFormat(
                                              cardHolderName));
                                },
                                label: S.of(context).payment_card_holder_name),
                            8.verticalSpace,
                            SesamePasswordTextField(
                                maxLength: 19,
                                isVisible: shouldShowCCNumber,
                                keyboardType: TextInputType.number,
                                controller: cardNumberController,
                                errorMessage: switch (
                                    state.ccNumberState.brokenConstraint) {
                                  CreditCardInputError.required =>
                                    S.of(context).payment_cc_input_required,
                                  CreditCardInputError.invalid => S
                                      .of(context)
                                      .payment_cc_number_input_invalid,
                                  _ => null
                                },
                                onVisibilityChanged: (isVisible) {
                                  if (isVisible) {
                                    authManager.requireAuthenticationAsync(
                                        context, onActionAuthorized: () {
                                      setState(() {
                                        shouldShowCCNumber = isVisible;
                                      });
                                    });
                                  } else {
                                    setState(() {
                                      shouldShowCCNumber = isVisible;
                                    });
                                  }
                                },
                                placeHolder: S
                                    .of(context)
                                    .payment_card_number_placeholder,
                                onChange: (cardNumber) {
                                  context
                                      .read<SubscriptionPaymentInterfaceBloc>()
                                      .add(SubscriptionPaymentInterfaceEvent
                                          .checkCreditCardNumberFormat(
                                              cardNumber));
                                },
                                label: S.of(context).payment_card_number),
                            8.verticalSpace,
                            Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Flexible(
                                      child: SesameCustomTextField(
                                          keyboardType: TextInputType.datetime,
                                          controller: cardExpiryController,
                                          errorMessage: switch (state
                                              .ccExpiryDateState
                                              .brokenConstraint) {
                                            CreditCardInputError.required => S
                                                .of(context)
                                                .payment_cc_input_required,
                                            CreditCardInputError.invalid => S
                                                .of(context)
                                                .payment_cc_expiry_input_invalid,
                                            _ => null
                                          },
                                          placeHolder: S
                                              .of(context)
                                              .payment_card_expiry_date_placeholder,
                                          onChange: (expiry) {
                                            context
                                                .read<
                                                    SubscriptionPaymentInterfaceBloc>()
                                                .add(SubscriptionPaymentInterfaceEvent
                                                    .checkCreditCardExpiryDateFormat(
                                                        expiry));
                                          },
                                          label: S
                                              .of(context)
                                              .payment_card_expiry_date)),
                                  16.horizontalSpace,
                                  Flexible(
                                      child: SesamePasswordTextField(
                                          keyboardType: TextInputType.number,
                                          controller: cardCVVController,
                                          errorMessage: switch (state
                                              .ccCVVState.brokenConstraint) {
                                            CreditCardInputError.required => S
                                                .of(context)
                                                .payment_cc_input_required,
                                            CreditCardInputError.invalid => S
                                                .of(context)
                                                .payment_cc_cvv_input_invalid,
                                            _ => null
                                          },
                                          placeHolder: S
                                              .of(context)
                                              .payment_card_cvv_placeholder,
                                          onChange: (cvv) {
                                            context
                                                .read<
                                                    SubscriptionPaymentInterfaceBloc>()
                                                .add(SubscriptionPaymentInterfaceEvent
                                                    .checkCreditCardCVVFormat(
                                                        cvv));
                                          },
                                          label:
                                              S.of(context).payment_card_cvv))
                                ]),
                            24.verticalSpace,
                            Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  SesameTermsAndPolicyCheckBox(
                                      selectedState: hasReadTheTermsAndPolicy,
                                      onChecked: (isChecked) {
                                        setState(() {
                                          hasReadTheTermsAndPolicy = isChecked;
                                        });
                                      }),
                                  16.verticalSpace,
                                  SesameCustomButton(
                                      buttonText: S.of(context).pay,
                                      isEnabled: hasReadTheTermsAndPolicy &&
                                          state.ccHolderNameState.isValid() &&
                                          state.ccNumberState.isValid() &&
                                          state.ccCVVState.isValid() &&
                                          state.ccExpiryDateState.isValid(),
                                      onPressed: () {
                                        SubscriptionPaymentInterfaceBloc
                                            localBloc = context.read<
                                                SubscriptionPaymentInterfaceBloc>();
                                        authManager.requireAuthenticationAsync(
                                            context, onActionAuthorized: () {
                                          showModalBottomSheet<void>(
                                              isDismissible: false,
                                              context: context,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                                  12.r),
                                                          topLeft:
                                                              Radius.circular(
                                                                  12.r))),
                                              builder: (BuildContext context) {
                                                return CreditCardDetailsStorageRequestModal(
                                                  content: S
                                                      .of(context)
                                                      .payment_credit_card_save_data_request,
                                                  onPositiveButtonPressed: () {
                                                    Navigator.pop(context);
                                                    localBloc.add(
                                                        const SubscriptionPaymentInterfaceEvent
                                                            .saveCCdataToSecureStorage());
                                                    localBloc.add(
                                                        const SubscriptionPaymentInterfaceEvent
                                                            .makePayment());
                                                  },
                                                  onNegativeButtonPressed: () {
                                                    Navigator.pop(context);
                                                    localBloc.add(
                                                        const SubscriptionPaymentInterfaceEvent
                                                            .makePayment());
                                                  },
                                                );
                                              });
                                        });
                                      }),
                                  16.verticalSpace
                                ])
                          ]),
                    ),
                  ));
            },
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    cardHolderNameController.dispose();
    cardNumberController.dispose();
    cardCVVController.dispose();
    cardExpiryController.dispose();
  }

  void updateControllers(SubscriptionPaymentInterfaceBlocState state) {
    cardHolderNameController.text = state.ccHolderNameState.data;
    cardCVVController.text = state.ccCVVState.data;
    cardCVVController.text = state.ccCVVState.data;
    cardExpiryController.text = state.ccExpiryDateState.data;
    String cardNumber = state.ccNumberState.data;
    if (cardNumber.isNotEmpty) {
      creditCardType = switch (cardNumber[0]) {
        "4" => CreditCardType.visa,
        "5" => CreditCardType.masterCard,
        _ => null
      };
    } else {
      creditCardType = null;
    }

    int pureDigitsLength = cardNumber.replaceAll(' ', '').length;
    bool isWritingForward =
        cardNumber.length > lastCreditCardNumberSaved.length;
    if (isWritingForward && pureDigitsLength.remainder(4) == 0) {
      cardNumberController.text = "$cardNumber ";
    } else {
      cardNumberController.text = cardNumber;
    }
    lastCreditCardNumberSaved = cardNumber;
  }
}

@RoutePage(name: "SubscriptionPaymentInterfaceRoute")
class SubscriptionPaymentInterface extends StatefulWidget {
  final SesamePaymentTransaction paymentRecord;
  final PaymentMethod paymentMethod;

  const SubscriptionPaymentInterface(
      {super.key, required this.paymentRecord, required this.paymentMethod});

  @override
  State<StatefulWidget> createState() => SubscriptionPaymentInterfaceState();
}
