import 'package:core/core_domain/DomainUseCaseProtocol.dart';
import 'package:core/core_utils/Logger.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import '../../domain/entities/SesameUser.dart';
import '../../domain/entities/login_method.dart';

@RoutePage(name: "AutoLoginLoadingRoute")
class AutoLoginLoadingScreen extends StatelessWidget {
  const AutoLoginLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DomainUseCaseProtocol<LoginMethod, Future<SesameUser>> loginUseCase =
        GetIt.instance.get(instanceName: "UserLoginUseCase");

    return basicScreenBuilder(
        context,
        null,
        Center(
            child: FutureBuilder(
                initialData: null,
                future: loginUseCase.execute(const LoginMethod.tokenLogin()),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasData && !snapshot.hasError) {
                      logger.i("Logged in");
                      AutoRouter.of(context).replaceNamed("/HomeRootRoute");
                    }
                  }
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      LabelLarge(text: S.of(context).auto_login_message),
                      16.verticalSpace,
                      CircularProgressIndicator(
                        color: Theme.of(context).primaryColor,
                      ),
                    ],
                  );
                })));
  }
}
