import 'package:core/core_domain/DomainErrorType.dart';
import 'package:sessions_feature/domain/entities/SesameSession.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

part 'home_calendar_state.freezed.dart';

@freezed
class HomeCalendarState with _$HomeCalendarState {
  const factory HomeCalendarState.loading() = _loading;
  const factory HomeCalendarState.error(DomainErrorType type) = _error;
  const factory HomeCalendarState.success(List<SesameSession> sessions) =
      _success;
}
