part of 'users_list_bloc.dart';

@freezed
class UsersListEvent with _$UsersListEvent {
  const factory UsersListEvent.loadUsersList(
      {String? nameQuery,
      bool? withMoreDetails,
      String? classGroupID,
      UserRoleSearchFilter? userRoleSearchFilter}) = _loadUsersList;
}
