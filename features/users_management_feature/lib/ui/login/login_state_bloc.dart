import 'package:core/core_domain/domain_error_type.dart';
import 'package:core/core_domain/domain_use_case_protocol.dart';
import 'package:core/core_domain/exceptions/sesame_domain_exception.dart';
import 'package:core/core_utils/logger.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import '../../domain/entities/SesameUser.dart';
import '../../domain/entities/login_method.dart';
import 'login_state.dart';

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
            if (error is SesameDomainException) {
              emit(LoginState.error(error.type));
            } else {
              emit(const LoginState.error(DomainErrorType.UnknownError));
            }
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
