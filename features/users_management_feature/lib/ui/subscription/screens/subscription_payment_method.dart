import 'package:shared_dependencies/shared_dependencies.dart';

import '../../../domain/entities/sesame_payment_transaction.dart';
import '../../navigation/users_navigation_configuration.gr.dart';
import '../components/student_subscription_record_card.dart';

enum PaymentMethod { clickToPay, cashOrCheck }

class SubscriptionPaymentMethodState extends State<SubscriptionPaymentMethod> {
  PaymentMethod? paymentMethod;
  bool hasReadTheTermsAndPolicy = false;

  @override
  Widget build(BuildContext context) {
    return titleScreenBuilder(context, S.of(context).payment, null, () {
      AutoRouter.of(context).back();
    },
        Material(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      StudentSubscriptionRecordCard(
                          record: widget.paymentRecord),
                      16.verticalSpace,
                      Align(
                        alignment: Alignment.centerLeft,
                        child: HeadlineLarge(
                          text:
                              "  ${S.of(context).payment_method_choice_title}",
                          textAlign: TextAlign.start,
                        ),
                      ),
                      16.verticalSpace,
                      Column(
                        children: [
                          SesameRadioButton<PaymentMethod>(
                              onChecked: (groupID) {
                                setState(() {
                                  paymentMethod = groupID;
                                });
                              },
                              id: PaymentMethod.clickToPay,
                              groupID: paymentMethod,
                              label: S.of(context).payment_method_clickToPay),
                          8.verticalSpace,
                          SesameRadioButton<PaymentMethod>(
                              onChecked: (groupID) {
                                setState(() {
                                  paymentMethod = groupID;
                                });
                              },
                              id: PaymentMethod.cashOrCheck,
                              groupID: paymentMethod,
                              label: S.of(context).payment_method_cachOrBank)
                        ],
                      ),
                      Expanded(
                        child: Column(
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
                                  buttonText: S.of(context).confirm,
                                  isEnabled: hasReadTheTermsAndPolicy &&
                                      (paymentMethod != null),
                                  onPressed: () {
                                    if (paymentMethod ==
                                        PaymentMethod.cashOrCheck) {
                                      AutoRouter.of(context).push(
                                          SubscriptionPaymentResultRoute(
                                              paymentMethod: paymentMethod!,
                                              paymentTransactionResult: null));
                                    } else {
                                      AutoRouter.of(context).push(
                                          SubscriptionPaymentInterfaceRoute(
                                              paymentRecord:
                                                  widget.paymentRecord,
                                              paymentMethod: paymentMethod!));
                                    }
                                  }),
                              16.verticalSpace
                            ]),
                      )
                    ]))));
  }
}

@RoutePage(name: "SubscriptionPaymentMethodRoute")
class SubscriptionPaymentMethod extends StatefulWidget {
  final SesamePaymentTransaction paymentRecord;
  const SubscriptionPaymentMethod({super.key, required this.paymentRecord});

  @override
  State<StatefulWidget> createState() => SubscriptionPaymentMethodState();
}
