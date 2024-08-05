import 'package:core/core_utils/bio_utils.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/domain/entities/sesame_user.dart';
import 'package:users_management_feature/ui/myprofile/my_profile_menu.dart';
import 'package:users_management_feature/ui/myprofile/my_profile_preview.dart';
import 'package:users_management_feature/ui/myprofile/stateManagement/profile/my_profile_bloc_state_manager.dart';
import 'package:users_management_feature/ui/myprofile/stateManagement/profile/my_profile_screen_event.dart';
import 'package:users_management_feature/ui/myprofile/stateManagement/profile/my_profile_screen_global_state.dart';

import '../navigation/users_navigation_configuration.gr.dart';

class MyUserProfileState extends State<MyUserProfileScreen> {
  SesameDeviceAuthManager authManager = GetIt.instance.get();

  @override
  Widget build(BuildContext context) => basicScreenBuilder(
      context,
      null,
      BlocProvider<MyProfileBlocStateManager>(
          create: (BuildContext providerContext) =>
              GetIt.instance.get<MyProfileBlocStateManager>()
                ..add(const MyProfileScreenEvent.loadMyProfileData()),
          child: BlocConsumer<MyProfileBlocStateManager,
              MyProfileScreenGlobalState>(
            listener: (context, state) {
              if (state.isLoggedOut) {
                AutoRouter.of(context).replaceNamed("/LoginRoute");
              }
              MyProfileBlocStateManager bloc =
                  context.read<MyProfileBlocStateManager>();
              state.profileDataState.whenOrNull(error: (error) {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return InfoDialogPopup(
                          title: S
                              .of(context)
                              .error_profile_data_not_available_title,
                          message: S
                              .of(context)
                              .error_profile_data_not_available_message,
                          onClosed: () {
                            bloc.add(const MyProfileScreenEvent.logout());
                          });
                    });
              });
            },
            builder: (context, state) {
              MyProfileBlocStateManager bloc =
                  context.read<MyProfileBlocStateManager>();
              return state.profileDataState.when(
                  success: (SesameUser userData) {
                    return Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 12.h, horizontal: 16.w),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            MyProfilePreview.createForUser(context, userData),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 16.h),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SesameCustomButton(
                                      variant: SesameButtonVariant.neutral,
                                      leftIconAssetName: "ic_badge.svg",
                                      buttonText: S.of(context).mybadge,
                                      onPressed: () {
                                        AutoRouter.of(context).push(
                                            MyBadgeRoute(
                                                userBadge: userData.badge));
                                      }),
                                  SesameCustomButton(
                                      variant: SesameButtonVariant.neutral,
                                      leftIconAssetName: "ic_visible.svg",
                                      buttonText: S.of(context).myprofile,
                                      onPressed: () {})
                                ],
                              ),
                            ),
                            MyProfileMenu(
                              user: userData,
                              onItemClicked: (path) {
                                if (path != null) {
                                  AutoRouter.of(context).pushNamed(path);
                                }
                              },
                            ),
                            Expanded(
                                child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: SesameCustomButton(
                                        variant: SesameButtonVariant.neutral,
                                        leftIconAssetName: "ic_logout.svg",
                                        buttonText: S.of(context).logout,
                                        onPressed: () {
                                          authManager
                                              .requireAuthenticationAsync(
                                                  context,
                                                  onActionAuthorized: () {
                                            bloc.add(const MyProfileScreenEvent
                                                .logout());
                                          });
                                        })))
                          ],
                        ));
                  },
                  loading: () => Center(
                        child: CircularProgressIndicator(
                            strokeWidth: 2.r,
                            color: Theme.of(context).colorScheme.tertiary),
                      ),
                  error: (error) {
                    return Center(
                      child: CircularProgressIndicator(
                          strokeWidth: 2.r,
                          color: Theme.of(context).colorScheme.tertiary),
                    );
                  });
            },
          )));
}

@RoutePage(name: "MyUserProfileRoute")
class MyUserProfileScreen extends StatefulWidget {
  const MyUserProfileScreen({super.key});

  @override
  State<StatefulWidget> createState() => MyUserProfileState();
}
