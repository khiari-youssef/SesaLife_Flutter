import 'package:core/core_domain/domain_error_type.dart';
import 'package:core/core_domain/domain_use_case_protocol.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import '../../../domain/entities/sesame_class_groups.dart';
import '../../../domain/usecases/sesame_classes_search_usecase.dart';

part 'sesame_classes_bloc.freezed.dart';
part 'sesame_classes_event.dart';
part 'sesame_classes_state.dart';

class SesameClassesBloc extends Bloc<SesameClassesEvent, SesameClassesState> {
  DomainUseCaseProtocol<SesameClassesSearchQuery,
          Future<List<SesameClassGroups>>> useCaseProtocol =
      GetIt.instance.get(instanceName: "SesameClassesSearchUseCase");
  SesameClassesBloc(super.initialState) {
    on<_loadSesameClasses>(_handleSesameClassesSearch);
  }
  void _handleSesameClassesSearch(
      _loadSesameClasses event, Emitter<SesameClassesState> emit) async {
    emit(const SesameClassesState.loading());
    List<SesameClassGroups> result = await useCaseProtocol.execute(
        SesameClassesSearchQuery(
            textQuery: event.searchQuery,
            sesameClassSearchFilter:
                event.filter ?? SesameClassSearchFilter.all));
    emit(SesameClassesState.success(result));
  }
}
