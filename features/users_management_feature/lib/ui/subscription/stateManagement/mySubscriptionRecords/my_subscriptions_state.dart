part of 'my_subscriptions_bloc.dart';

@freezed
class MySubscriptionsState with _$MySubscriptionsState {
  const factory MySubscriptionsState.loading() = _loading;
  const factory MySubscriptionsState.error(DomainErrorType type) = _error;
  const factory MySubscriptionsState.success(
      AnnualSubscriptionModel subscription) = _success;
}
