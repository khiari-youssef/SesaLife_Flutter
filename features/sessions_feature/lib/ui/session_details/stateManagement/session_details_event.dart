part of 'session_details_bloc.dart';

@freezed
class SessionDetailsEvent with _$SessionDetailsEvent {
  const factory SessionDetailsEvent.started() = _Started;
}
