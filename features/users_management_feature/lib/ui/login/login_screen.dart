import 'package:core/exports.dart';
import 'package:designsystem/extensions.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

import 'login_state.dart';
import 'login_state_bloc.dart';

class LoginScreenState extends State<LoginScreen> {
  bool canLogin = false;
  TextEditingController emailController =
      TextEditingController(text: "ahmed.prof@sesame.com.tn");
  TextEditingController passwordController =
      TextEditingController(text: "test");

  void updateLoginButtonState() {
    setState(() {
      canLogin =
          emailController.text.isNotEmpty && passwordController.text.isNotEmpty;
    });
  }

  @override
  void initState() {
    super.initState();
    canLogin =
        emailController.text.isNotEmpty && passwordController.text.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginStateBloc>(
      create: (BuildContext providerContext) => GetIt.instance.get(),
      child: BlocConsumer<LoginStateBloc, LoginState>(
        listener: (context, state) {
          state.when(
              idle: (bool hasInValidInput) {},
              loading: () {},
              onEmailUpdated: (email) {
                emailController.text = email;
                updateLoginButtonState();
              },
              onPasswordUpdated: (password) {
                passwordController.text = password;
                updateLoginButtonState();
              },
              success: () {
                AutoRouter.of(context).replaceNamed("/HomeRootRoute");
              },
              error: (errorType) {
                if (errorType == DomainErrorType.InvalidCredentials) {
                  context.showToast(
                      title: S.of(context).login_failed_title,
                      message: S.of(context).login_error_invalid_credentials,
                      toastType: ToastType.Error);
                } else {
                  context.showToast(
                      message: errorType.name, toastType: ToastType.Error);
                }
              });
        },
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: Theme.of(context).colorScheme.surface,
              body: SingleChildScrollView(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(20.r) + EdgeInsets.only(top: 12.r),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const WelcomeLogo(),
                        Lottie.asset('assets/lottie/login_anim.json',
                            package: "designsystem",
                            height: 200.h,
                            width: 200.w),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SesameCustomTextField(
                                controller: emailController,
                                onChange: (updatedText) {
                                  context
                                      .read<LoginStateBloc>()
                                      .add(LoginEvent.updateEmail(updatedText));
                                },
                                label: S.of(context).email,
                                rightIcon: TextFieldIcon("ic_clear.svg", () {
                                  emailController.text = "";
                                }),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              SesamePasswordTextField(
                                  controller: passwordController,
                                  isRequired: false,
                                  onChange: (updatedText) {
                                    context.read<LoginStateBloc>().add(
                                        LoginEvent.updatePassword(updatedText));
                                  },
                                  label: S.of(context).password)
                            ]),
                        SizedBox(height: 32.h),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: SesameCustomButton(
                                isLoading: state == const LoginState.loading(),
                                buttonText: S.of(context).login,
                                isEnabled: canLogin,
                                onPressed: () {
                                  context.read<LoginStateBloc>().add(
                                      LoginEvent.login(
                                          emailController.value.text,
                                          passwordController.value.text));
                                },
                                variant: SesameButtonVariant.hard,
                              ),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: SesameCustomButton(
                                buttonText: S.of(context).guest_space,
                                onPressed: () {
                                  AutoRouter.of(context)
                                      .pushNamed("/MyGuestSpaceRoute");
                                },
                                variant: SesameButtonVariant.soft,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}

@RoutePage(name: "LoginRoute")
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() => LoginScreenState();
}
