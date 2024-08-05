import 'package:core/core_domain/domain_error_type.dart';
import 'package:core/core_domain/domain_use_case_protocol.dart';
import 'package:core/core_domain/entities/entities.dart';
import 'package:core/core_domain/entities/user_profile_preview.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import '../../../domain/usecases/user_search_usecase.dart';

part 'users_list_bloc.freezed.dart';
part 'users_list_event.dart';
part 'users_list_state.dart';

class UsersListBloc extends Bloc<UsersListEvent, UsersListState> {
  DomainUseCaseProtocol<UserSearchQuery, Future<List<UserProfilePreview>>>
      useCaseProtocol = GetIt.instance.get(instanceName: "UserSearchUseCase");
  UsersListBloc(super.initialState) {
    on<UsersListEvent>(_handleUserSearchEvent);
  }

  void _handleUserSearchEvent(
      UsersListEvent event, Emitter<UsersListState> emit) async {
    emit(const UsersListState.loading());
    List<UserProfilePreview> result = await useCaseProtocol.execute(
        UserSearchQuery(
            queryInput: event.nameQuery,
            classGroupID: event.classGroupID,
            roleSearchFilter:
                event.userRoleSearchFilter ?? UserRoleSearchFilter.all));
    emit(UsersListState.success(result));
  }
}
