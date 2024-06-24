part of 'users_list_bloc.dart';

@freezed
class UsersListState with _$UsersListState {
  const factory UsersListState.initial(
      {List<UserProfilePreview>? initialData}) = _initial;
  const factory UsersListState.loading() = _loading;
  const factory UsersListState.error(DomainErrorType errorType) = _error;
  const factory UsersListState.success(List<UserProfilePreview> data) =
      _success;
}
