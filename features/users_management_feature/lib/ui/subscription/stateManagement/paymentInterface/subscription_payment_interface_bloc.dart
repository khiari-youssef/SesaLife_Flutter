import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

part 'subscription_payment_interface_event.dart';
part 'subscription_payment_interface_state.dart';
part 'subscription_payment_interface_bloc.freezed.dart';

class SubscriptionPaymentInterfaceBloc extends Bloc<
    SubscriptionPaymentInterfaceEvent, SubscriptionPaymentInterfaceBlocState> {
  SubscriptionPaymentInterfaceBloc()
      : super(const SubscriptionPaymentInterfaceBlocState.allStateCleared()) {
    on<SubscriptionPaymentInterfaceEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
