import 'package:sessions_feature/ui/home_calendar/bloc/home_calendar_state.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import '../ui/home_calendar/bloc/home_calendar_bloc.dart';

extension SessionsDependenciesLoader on GetIt {
  void loadSessionDependencies() {
    registerFactory(() => HomeCalendarBloc(const HomeCalendarState.loading()));
  }
}
