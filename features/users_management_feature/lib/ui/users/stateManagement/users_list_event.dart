part of 'users_list_bloc.dart';

@freezed
class UsersListEvent with _$UsersListEvent {
  const factory UsersListEvent.loadUsersList(
      {String? nameQuery,
      bool? withMoreDetails,
      UserRoleSearchFilter? userRoleSearchFilter}) = _loadUsersList;
}
