import 'package:core/exports.dart';
import 'package:designsystem/components/images/CustomIcon.dart';
import 'package:designsystem/theme/dimens.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/sesame_payment_transaction.dart';

class StudentSubscriptionRecordCard extends StatelessWidget {
  final SesamePaymentTransaction record;
  final VoidCallback? onClicked;

  const StudentSubscriptionRecordCard(
      {super.key, required this.record, this.onClicked});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Theme.of(context).colorScheme.surfaceContainerLow,
        child: Padding(
          padding: EdgeInsets.all(8.r),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      record.when(unPaid: (data) {
                        return data.isPaymentOverdue()
                            ? const CustomIcon(
                                iconSVGname: "ic_warning.svg",
                                color: Color(0xFF9F0916))
                            : const SizedBox();
                      }, paid: (data) {
                        return const CustomIcon(
                            iconSVGname: "ic_checked.svg",
                            color: Color(0xFF1A8652));
                      }),
                      (record.whenOrNull(
                                  unPaid: (data) =>
                                      data.isPaymentOverdue() ? 12 : 0) ??
                              12)
                          .horizontalSpace,
                      LabelMedium(
                        text: record.when(unPaid: (data) {
                          return data.isPaymentOverdue()
                              ? S.of(context).payment_subscription_overdue
                              : S
                                  .of(context)
                                  .payment_subscription_expected_date(
                                      data.periodEndDate.toDisplayDate());
                        }, paid: (data) {
                          return S
                              .of(context)
                              .payment_subscription_completion_date(
                                  data.paymentDate.toDisplayDate());
                        }),
                        color: const Color(0xFF696969),
                      )
                    ]),
                8.verticalSpace,
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: S.of(context).payment_subscription_period,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface,
                          fontWeight: FontWeight.w500)),
                  TextSpan(
                      text: record.data.periodDisplayFormat(),
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface)),
                ])),
                8.verticalSpace,
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: S.of(context).payment_fee,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface,
                          fontWeight: FontWeight.w500)),
                  TextSpan(
                      text: NumberFormat.currency(
                              name: record.data.defaultCurrencyCode,
                              locale: "ar_TN")
                          .format(record.data.expectedPaymentAmount),
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface)),
                ])),
                8.verticalSpace,
                buildWhenNullSafe(onClicked, (safeOnClicked) {
                  return Align(
                    alignment: Alignment.centerRight,
                    child: record.when(
                        unPaid: (data) => SesameCustomButton(
                              sizeType: ComponentSize.listSize,
                              leftIconAssetName: data.isPaymentOverdue()
                                  ? null
                                  : "ic_next_arrow.svg",
                              variant: data.isPaymentOverdue()
                                  ? SesameButtonVariant.warning
                                  : SesameButtonVariant.positif,
                              buttonText: data.isPaymentOverdue()
                                  ? S.of(context).payment_overdue_action
                                  : S.of(context).payment_pay_now_action,
                              onPressed: safeOnClicked,
                            ),
                        paid: (data) => SesameCustomButton(
                              sizeType: ComponentSize.listSize,
                              leftIconAssetName: data.paymentReceipt.when(
                                  local: (uri, type) =>
                                      "ic_export_document.svg",
                                  network: (url, type) => "ic_download.svg"),
                              variant: SesameButtonVariant.soft,
                              buttonText: data.paymentReceipt.when(
                                  local: (uri, type) =>
                                      S.of(context).payment_receipt_view,
                                  network: (url, type) =>
                                      S.of(context).payment_receipt_download),
                              onPressed: safeOnClicked,
                            )),
                  );
                })
              ]),
        ));
  }
}
