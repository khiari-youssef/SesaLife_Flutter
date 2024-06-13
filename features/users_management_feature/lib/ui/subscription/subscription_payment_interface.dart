import 'dart:ui';

import 'package:core/exports.dart';
import 'package:designsystem/components/images/CustomIcon.dart';
import 'package:designsystem/designsystem_exports.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/ui/subscription/stateManagement/paymentInterface/subscription_payment_interface_bloc.dart';
import 'package:users_management_feature/ui/subscription/subscription_payment_method.dart';

import '../../domain/entities/student_subscription_record.dart';
import 'components/CreditCardPreview.dart';

class SubscriptionPaymentInterfaceState
    extends State<SubscriptionPaymentInterface> {
  bool hasReadTheTermsAndPolicy = false;
  CreditCardType? creditCardType;
  TextEditingController cardHolderNameController = TextEditingController();
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController cardExpiryController = TextEditingController();
  TextEditingController cardCVVController = TextEditingController();
  late String lastCreditCardNumberSaved;

  @override
  void initState() {
    super.initState();
    lastCreditCardNumberSaved = cardNumberController.text;
  }

  @override
  Widget build(BuildContext context) {
    return titleScreenBuilder(context, S.of(context).payment, null, () {
      AutoRouter.of(context).back();
    },
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.h),
          child: BlocProvider(
            create: (context) => SubscriptionPaymentInterfaceBloc(),
            child: BlocConsumer<SubscriptionPaymentInterfaceBloc,
                SubscriptionPaymentInterfaceBlocState>(
              listener: (context, state) {},
              builder: (context, state) {
                return Material(
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
                                cardType: creditCardType,
                                cardHolderNameController:
                                    cardHolderNameController,
                                cardNumberController: cardNumberController,
                                cardExpirationDateController:
                                    cardExpiryController,
                              )),
                          16.verticalSpace,
                          SesamePasswordTextField(
                              keyboardType: TextInputType.text,
                              controller: cardHolderNameController,
                              placeHolder:
                                  S.of(context).payment_card_holder_name,
                              onChange: (cardHolderName) {
                                setState(() {
                                  cardHolderNameController.text =
                                      cardHolderName;
                                });
                              },
                              label: S.of(context).payment_card_holder_name),
                          8.verticalSpace,
                          SesamePasswordTextField(
                              maxLength: 19,
                              keyboardType: TextInputType.number,
                              controller: cardNumberController,
                              placeHolder:
                                  S.of(context).payment_card_number_placeholder,
                              onChange: (cardNumber) {
                                setState(() {
                                  if (cardNumber.isNotEmpty) {
                                    creditCardType = switch (cardNumber[0]) {
                                      "4" => CreditCardType.visa,
                                      "5" => CreditCardType.masterCard,
                                      _ => null
                                    };
                                  } else {
                                    creditCardType = null;
                                  }

                                  int pureDigitsLength =
                                      cardNumber.replaceAll(' ', '').length;
                                  bool isWritingForward = cardNumber.length >
                                      lastCreditCardNumberSaved.length;
                                  if (isWritingForward &&
                                      pureDigitsLength.remainder(4) == 0) {
                                    cardNumberController.text = "$cardNumber ";
                                  } else {
                                    cardNumberController.text = cardNumber;
                                  }
                                  lastCreditCardNumberSaved = cardNumber;
                                });
                              },
                              label: S.of(context).payment_card_number),
                          8.verticalSpace,
                          Row(children: [
                            Flexible(
                                child: SesamePasswordTextField(
                                    keyboardType: TextInputType.datetime,
                                    controller: cardExpiryController,
                                    placeHolder: S
                                        .of(context)
                                        .payment_card_expiry_date_placeholder,
                                    onChange: (expiry) {
                                      setState(() {
                                        cardExpiryController.text = expiry;
                                      });
                                    },
                                    label: S
                                        .of(context)
                                        .payment_card_expiry_date)),
                            16.horizontalSpace,
                            Flexible(
                                child: SesamePasswordTextField(
                                    keyboardType: TextInputType.number,
                                    controller: cardCVVController,
                                    placeHolder: S
                                        .of(context)
                                        .payment_card_cvv_placeholer,
                                    onChange: (cvv) {
                                      setState(() {
                                        cardCVVController.text = cvv;
                                      });
                                    },
                                    label: S.of(context).payment_card_cvv))
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
                                    isEnabled: hasReadTheTermsAndPolicy,
                                    onPressed: () {}),
                                16.verticalSpace
                              ])
                        ]),
                  ),
                );
              },
            ),
          ),
        ));
  }

  @override
  void dispose() {
    super.dispose();
    cardHolderNameController.dispose();
    cardNumberController.dispose();
    cardCVVController.dispose();
    cardExpiryController.dispose();
  }
}

@RoutePage(name: "SubscriptionPaymentInterfaceRoute")
class SubscriptionPaymentInterface extends StatefulWidget {
  final StudentSubscriptionRecord paymentRecord;
  final PaymentMethod paymentMethod;
  const SubscriptionPaymentInterface(
      {super.key, required this.paymentRecord, required this.paymentMethod});

  @override
  State<StatefulWidget> createState() => SubscriptionPaymentInterfaceState();
}
