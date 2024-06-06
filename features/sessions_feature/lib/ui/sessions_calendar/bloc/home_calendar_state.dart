import 'package:core/core_domain/DomainErrorType.dart';
import 'package:sessions_feature/domain/entities/sesame_session.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

part 'home_calendar_state.freezed.dart';

@freezed
class HomeSessionsState with _$HomeSessionsState {
  const factory HomeSessionsState.loading() = _loading;
  const factory HomeSessionsState.error(DomainErrorType type) = _error;
  const factory HomeSessionsState.success(List<SesameSession> sessions) =
      _success;
}
