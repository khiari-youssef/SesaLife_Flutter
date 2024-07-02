import 'package:core/core_domain/DomainErrorType.dart';
import 'package:core/core_domain/DomainUseCaseProtocol.dart';
import 'package:core/core_utils/Logger.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import '../../domain/entities/SesameUser.dart';
import '../../domain/entities/login_method.dart';
import 'LoginState.dart';

class LoginStateBloc extends Bloc<LoginEvent, LoginState> {
  final DomainUseCaseProtocol<LoginMethod, Future<SesameUser>> useCase;
  LoginStateBloc(super.initialState, this.useCase) {
    on((event, emit) async {
      if (event is LoginEvent) {
        await event.when(login: (email, password) async {
          emit(const LoginState.loading());
          await useCase
              .execute(LoginMethod.credentialLogin(email, password))
              .then((value) {
            emit(const LoginState.success());
          }, onError: (error) {
            logger.e(error);
            emit(const LoginState.error(DomainErrorType.UnknownError));
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
