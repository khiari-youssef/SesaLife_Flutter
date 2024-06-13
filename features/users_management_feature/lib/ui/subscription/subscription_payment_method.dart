import 'package:shared_dependencies/shared_dependencies.dart';

import '../../domain/entities/student_subscription_record.dart';
import '../navigation/UsersNavigationConfiguration.gr.dart';
import 'components/student_subscription_record_card.dart';

enum PaymentMethod { clickToPay, googleOrApplePay, cachOrCheck }

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
                padding: EdgeInsets.all(8.r),
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StudentSubscriptionRecordCard(
                          record: widget.paymentRecord),
                      16.verticalSpace,
                      HeadlineLarge(
                          text:
                              "  ${S.of(context).payment_method_choice_title}"),
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
                              id: PaymentMethod.googleOrApplePay,
                              groupID: paymentMethod,
                              label: S
                                  .of(context)
                                  .payment_method_googleOrApplePay),
                          8.verticalSpace,
                          SesameRadioButton<PaymentMethod>(
                              onChecked: (groupID) {
                                setState(() {
                                  paymentMethod = groupID;
                                });
                              },
                              id: PaymentMethod.cachOrCheck,
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
                                  AutoRouter.of(context).push(
                                      SubscriptionPaymentInterfaceRoute(
                                          paymentRecord: widget.paymentRecord,
                                          paymentMethod: paymentMethod!));
                                }),
                            16.verticalSpace
                          ]))
                    ]))));
  }
}

@RoutePage(name: "SubscriptionPaymentMethodRoute")
class SubscriptionPaymentMethod extends StatefulWidget {
  final StudentSubscriptionRecord paymentRecord;
  const SubscriptionPaymentMethod({super.key, required this.paymentRecord});

  @override
  State<StatefulWidget> createState() => SubscriptionPaymentMethodState();
}
