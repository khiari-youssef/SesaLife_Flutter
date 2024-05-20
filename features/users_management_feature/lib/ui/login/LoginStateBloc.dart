import 'package:shared_dependencies/shared_dependencies.dart';

import '../../infrastructure/ports/LoginRepositoryContract.dart';
import 'LoginState.dart';

class LoginStateBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepositoryContract repositoryContract;
  LoginStateBloc(super.initialState, this.repositoryContract) {
    on((event, emit) async {
      if (event is LoginEvent) {
        await event.when(login: (email, password) async {
          emit(const LoginState.loading());
          await repositoryContract
              .authenticateUserWithCredentials(email, password)
              .then((value) {
            emit(const LoginState.success());
          }, onError: (error) {
            emit(const LoginState.error(ErrorType.UnknownError));
          });
        }, updateEmail: (email) {
          emit(LoginState.onEmailUpdated(email));
        }, updatePassword: (password) {
          emit(LoginState.onPasswordUpdated(password));
        });
      }
    });
  }
}
