import 'package:core/core_domain/entities/entities.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/ui/subscription/student_subscription_record_card.dart';

import '../../domain/entities/student_subscription_record.dart';

class MySubscriptionScreenState extends State<MySubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return titleScreenBuilder(context, S.of(context).profile_subscription, null,
        () {
      AutoRouter.of(context).back();
    },
        Padding(
            padding: EdgeInsets.all(8.r),
            child: Column(
              children: [
                StudentSubscriptionRecordCard(
                    record: StudentSubscriptionRecord.paid(
                        data: PaidStudentSubscriptionRecord(
                            actualPaymentAmount: 1750,
                            paymentReceipt: const SesameAttachment.local(
                                uri: "attachment.pdf",
                                type: SesameAttachmentType.pdf),
                            paymentMethod: 'credit_card',
                            transactionID: 'transid',
                            paymentDate: DateTime.now(),
                            id: 'id',
                            annualSubscriptionModelID: 'subid',
                            referencedStudentID: 'studid',
                            periodStartDate: DateTime(2024, 1, 1),
                            periodEndDate: DateTime(2024, 7, 1),
                            expectedPaymentAmount: 1750,
                            defaultCurrencyCode: "TND",
                            signature: 'signature')),
                    onClicked: () {}),
                StudentSubscriptionRecordCard(
                    record: StudentSubscriptionRecord.paid(
                        data: PaidStudentSubscriptionRecord(
                            actualPaymentAmount: 1750,
                            paymentReceipt: const SesameAttachment.network(
                                url: "www.attachment.com/example.pdf",
                                type: SesameAttachmentType.pdf),
                            paymentMethod: 'credit_card',
                            transactionID: 'transid',
                            paymentDate: DateTime.now(),
                            id: 'id',
                            annualSubscriptionModelID: 'subid',
                            referencedStudentID: 'studid',
                            periodStartDate: DateTime(2024, 1, 1),
                            periodEndDate: DateTime(2024, 7, 1),
                            expectedPaymentAmount: 1750,
                            defaultCurrencyCode: "TND",
                            signature: 'signature')),
                    onClicked: () {}),
                StudentSubscriptionRecordCard(
                    record: StudentSubscriptionRecord.unPaid(
                        data: UnPaidStudentSubscriptionRecord(
                            id: 'id',
                            annualSubscriptionModelID: 'subid',
                            referencedStudentID: 'studid',
                            periodStartDate: DateTime(2024, 1, 1),
                            periodEndDate: DateTime(2024, 5, 1),
                            expectedPaymentAmount: 1750,
                            defaultCurrencyCode: "TND",
                            signature: 'signature')),
                    onClicked: () {}),
                StudentSubscriptionRecordCard(
                    record: StudentSubscriptionRecord.unPaid(
                        data: UnPaidStudentSubscriptionRecord(
                            id: 'id',
                            annualSubscriptionModelID: 'subid',
                            referencedStudentID: 'studid',
                            periodStartDate: DateTime(2024, 1, 1),
                            periodEndDate: DateTime(2024, 7, 1),
                            expectedPaymentAmount: 1750,
                            defaultCurrencyCode: "TND",
                            signature: 'signature')),
                    onClicked: () {})
              ],
            )));
  }
}

@RoutePage(name: "MySubscriptionRoute")
class MySubscriptionScreen extends StatefulWidget {
  const MySubscriptionScreen({super.key});

  @override
  State<StatefulWidget> createState() => MySubscriptionScreenState();
}
