import 'package:bloc/bloc.dart';
import 'package:core/core_domain/DomainErrorType.dart';
import 'package:core/core_domain/entities/entities.dart';
import 'package:core/core_domain/entities/user_profile_preview.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/domain/entities/SesameUser.dart';

import '../../../infrastructure/repositories/UsersSearchRepository.dart';

part 'users_list_event.dart';
part 'users_list_state.dart';
part 'users_list_bloc.freezed.dart';

class UsersListBloc extends Bloc<UsersListEvent, UsersListState> {
  UsersSearchRepositoryContract repositoryContract =
      GetIt.instance.get(instanceName: "UsersSearchRepository");
  UsersListBloc(UsersListState initialState) : super(initialState) {
    on<UsersListEvent>(_handleUserSearchEvent);
  }

  void _handleUserSearchEvent(
      UsersListEvent event, Emitter<UsersListState> emit) async {
    emit(const UsersListState.loading());
    List<UserProfilePreview> result =
        await repositoryContract.queryUsersByName(event.nameQuery ?? "");
    emit(UsersListState.success(result));
  }
}
