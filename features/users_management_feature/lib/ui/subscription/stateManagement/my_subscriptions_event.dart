part of 'my_subscriptions_bloc.dart';

@freezed
class MySubscriptionsEvent with _$MySubscriptionsEvent {
  const factory MySubscriptionsEvent.loadMySubscriptions() =
      _loadMySubscriptions;
}
