import 'package:core/core_utils/Logger.dart';
import 'package:shared_dependencies/shared_dependencies.dart';
import 'package:users_management_feature/ui/myprofile/stateManagement/settings/my_settings_event.dart';
import 'package:users_management_feature/ui/myprofile/stateManagement/settings/my_settings_state.dart';
import 'package:users_management_feature/ui/myprofile/stateManagement/settings/my_settings_state_manager.dart';

class MySettingsScreenState extends State<MySettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return titleScreenBuilder(context, S.of(context).settings, null, () {
      AutoRouter.of(context).back();
    },
        BlocProvider<MySettingsStateManager>(
          create: (BuildContext context) =>
              MySettingsStateManager(const MySettingsState.initialState())
                ..add(const MySettingsEvent.loadInitialData()),
          child: BlocConsumer<MySettingsStateManager, MySettingsState>(
            listener: (context, state) {},
            builder: (context, state) {
              logger.i("new State $state");
              return Material(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SesameCheckbox(
                        initialState:
                            state.data?.isStayLoggedInOptionEnabled ?? false,
                        onChecked: (isChecked) {
                          context.read<MySettingsStateManager>().add(
                              MySettingsEvent.toggleStayLoggedInOption(
                                  isChecked));
                        },
                        label: S.of(context).settings_stay_logged),
                    8.verticalSpace,
                    SesameCheckbox(
                        initialState:
                            state.data?.isHideMyWorkDataOptionEnabled ?? false,
                        onChecked: (isChecked) {
                          context.read<MySettingsStateManager>().add(
                              MySettingsEvent.toggleHideMyWorkDataOption(
                                  isChecked));
                        },
                        label: S.of(context).settings_hide_my_data),
                    8.verticalSpace,
                    SesameCheckbox(
                        initialState:
                            state.data?.isToggleNotifyMeOptionEnabled ?? false,
                        onChecked: (isChecked) {
                          context.read<MySettingsStateManager>().add(
                              MySettingsEvent.toggleNotifyMeOption(isChecked));
                        },
                        label: S.of(context).settings_notify_me)
                  ],
                ),
              );
            },
          ),
        ));
  }
}

@RoutePage(name: "MySettingsRoute")
class MySettingsScreen extends StatefulWidget {
  const MySettingsScreen({super.key});

  @override
  State<StatefulWidget> createState() => MySettingsScreenState();
}
