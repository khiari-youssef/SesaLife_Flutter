import 'dart:math';

import 'package:core/exports.dart';

import '../entities/SubscriptionPaymentResult.dart';

class CreditCardPaymentUseCase
    implements
        DomainUseCaseProtocol<CreditCardDetails,
            Future<SubscriptionPaymentResult>> {
  @override
  Future<SubscriptionPaymentResult> execute(CreditCardDetails input) async {
    await Future.delayed(const Duration(seconds: 1));
    return SubscriptionPaymentResult(
        recordID: Random.secure().toString(), paymentDate: DateTime.now());
  }
}
