import 'package:core/exports.dart';

import '../entities/subscription_payment_result.dart';

class CreditCardPaymentUseCase
    implements
        DomainUseCaseProtocol<CreditCardDetails,
            Future<SubscriptionPaymentResult>> {
  @override
  Future<SubscriptionPaymentResult> execute(CreditCardDetails input) async {
    await Future.delayed(const Duration(seconds: 1));
    return SubscriptionPaymentResult(
        recordID: "7a9a8e950e576ae8419a52837594b80fca9a0c87",
        paymentDate: DateTime.now());
  }
}
