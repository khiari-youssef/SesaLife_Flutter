import 'package:core/core_domain/DomainErrorType.dart';
import 'package:designsystem/designsystem_exports.dart';
import 'package:flutter/material.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/domain/entities/SesameUser.dart';
import 'package:users_management_feature/ui/myprofile/MyProfileMenu.dart';
import 'package:users_management_feature/ui/myprofile/MyProfilePreview.dart';
import 'package:users_management_feature/ui/myprofile/stateManagement/MyProfileBlocStateManager.dart';
import 'package:users_management_feature/ui/myprofile/stateManagement/MyProfileScreenEvent.dart';
import 'package:users_management_feature/ui/myprofile/stateManagement/MyProfileScreenGlobalState.dart';

import '../../domain/entities/SesameStudent.dart';
import '../../domain/entities/SesameTeacher.dart';

class MyUserProfileState extends State<MyUserProfileScreen> {
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
                            context
                                .read<MyProfileBlocStateManager>()
                                .add(const MyProfileScreenEvent.logout());
                          });
                    });
              });
            },
            builder: (context, state) {
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
                                      onPressed: () {}),
                                  SesameCustomButton(
                                      variant: SesameButtonVariant.neutral,
                                      leftIconAssetName: "ic_visible.svg",
                                      buttonText: S.of(context).myprofile,
                                      onPressed: () {})
                                ],
                              ),
                            ),
                            const MyProfileMenu(),
                            Expanded(
                                child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: SesameCustomButton(
                                        variant: SesameButtonVariant.neutral,
                                        leftIconAssetName: "ic_logout.svg",
                                        buttonText: S.of(context).logout,
                                        onPressed: () {})))
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
