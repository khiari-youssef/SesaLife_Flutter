import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_details_event.dart';
part 'session_details_state.dart';
part 'session_details_bloc.freezed.dart';

class SessionDetailsBloc
    extends Bloc<SessionDetailsEvent, SessionDetailsState> {
  SessionDetailsBloc() : super(const SessionDetailsState.initial()) {
    on<SessionDetailsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
