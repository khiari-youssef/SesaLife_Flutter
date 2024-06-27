import '../../exports.dart';

class ProfilePreviewCardWithRedirectAction extends StatelessWidget {
  final UserProfilePreview profilePreview;
  final VoidCallback onClicked;
  const ProfilePreviewCardWithRedirectAction(
      {super.key, required this.profilePreview, required this.onClicked});

  @override
  Widget build(BuildContext context) {
    return ProfilePreviewCard(
      profilePreview: profilePreview,
      onClicked: onClicked,
      actionIconAssetName: "ic_arrow_right_dir.svg",
      borderRadius: BorderRadius.circular(8.r),
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerLow,
    );
  }
}
