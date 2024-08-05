import 'package:bloc/bloc.dart';
import 'package:core/core_domain/domain_error_type.dart';
import 'package:core/core_domain/entities/sesame_attachment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:users_management_feature/domain/entities/annual_subscription_model.dart';

import 'package:users_management_feature/domain/entities/sesame_payment_transaction.dart';

part 'my_subscriptions_bloc.freezed.dart';
part 'my_subscriptions_event.dart';
part 'my_subscriptions_state.dart';

class MySubscriptionsBloc
    extends Bloc<MySubscriptionsEvent, MySubscriptionsState> {
  MySubscriptionsBloc() : super(const MySubscriptionsState.loading()) {
    on<MySubscriptionsEvent>((event, emit) {
      event.when(loadMySubscriptions: () {
        emit(MySubscriptionsState.success(AnnualSubscriptionModel(
            id: 'sesameModelID',
            name: "sesameModelName",
            transactions: [
              SesamePaymentTransaction.unPaid(
                  data: SesameRequiredPaymentTransaction(
                      id: 'id',
                      annualSubscriptionModelID: 'subid',
                      referencedStudentID: 'studid',
                      periodStartDate: DateTime(2024, 05, 01),
                      periodEndDate: DateTime(2024, 05, 2),
                      expectedPaymentAmount: 200,
                      defaultCurrencyCode: "TND",
                      signature: 'signature')),
              SesamePaymentTransaction.unPaid(
                  data: SesameRequiredPaymentTransaction(
                      id: 'id',
                      annualSubscriptionModelID: 'subid',
                      referencedStudentID: 'studid',
                      periodStartDate: DateTime(2024, 05, 03),
                      periodEndDate: DateTime(2024, 10, 1),
                      expectedPaymentAmount: 1750,
                      defaultCurrencyCode: "TND",
                      signature: 'signature')),
              SesamePaymentTransaction.paid(
                  data: SesameCompletedPaymentTransaction(
                      actualPaymentAmount: 1750,
                      paymentReceipt: const SesameAttachment.network(
                          url: "wwww.attachment.com/doc.pdf",
                          type: SesameAttachmentType.pdf),
                      paymentMethod: 'credit_card',
                      transactionID: 'transid',
                      paymentDate: DateTime.now(),
                      id: 'id',
                      annualSubscriptionModelID: 'subid',
                      referencedStudentID: 'studid',
                      periodStartDate: DateTime(2023, 10, 01),
                      periodEndDate: DateTime(2024, 30, 1),
                      expectedPaymentAmount: 1750,
                      defaultCurrencyCode: "TND",
                      signature: 'signature')),
              SesamePaymentTransaction.paid(
                  data: SesameCompletedPaymentTransaction(
                      actualPaymentAmount: 2300,
                      paymentReceipt: const SesameAttachment.local(
                          uri: "attachment.pdf",
                          type: SesameAttachmentType.pdf),
                      paymentMethod: 'credit_card',
                      transactionID: 'transid',
                      paymentDate: DateTime.now(),
                      id: 'id',
                      annualSubscriptionModelID: 'subid',
                      referencedStudentID: 'studid',
                      periodStartDate: DateTime(2023, 9, 01),
                      periodEndDate: DateTime(2023, 9, 30),
                      expectedPaymentAmount: 1750,
                      defaultCurrencyCode: "TND",
                      signature: 'signature'))
            ])));
      });
    });
  }
}
