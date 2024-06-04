import 'package:sessions_feature/ui/sessions_calendar/bloc/home_calendar_bloc.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import '../ui/sessions_calendar/bloc/home_calendar_state.dart';

extension SessionsDependenciesLoader on GetIt {
  void loadSessionDependencies() {
    registerFactory(() => HomeSessionsBloc(const HomeSessionsState.loading()));
  }
}
