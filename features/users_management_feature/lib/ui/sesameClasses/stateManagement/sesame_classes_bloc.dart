import 'package:bloc/bloc.dart';
import 'package:core/core_domain/DomainErrorType.dart';
import 'package:core/core_domain/DomainUseCaseProtocol.dart';
import 'package:core/core_domain/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import '../../../domain/entities/sesame_class_groups.dart';
import '../../../domain/usecases/sesame_classes_search_usecase.dart';

part 'sesame_classes_event.dart';
part 'sesame_classes_state.dart';
part 'sesame_classes_bloc.freezed.dart';

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
