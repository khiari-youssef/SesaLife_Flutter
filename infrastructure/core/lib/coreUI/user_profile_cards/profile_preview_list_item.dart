import 'package:core/core_domain/entities/entities.dart';
import 'package:designsystem/components/images/custom_icon.dart';
import 'package:designsystem/designsystem_exports.dart';

class ProfilePreviewCard extends StatelessWidget {
  final UserProfilePreview profilePreview;
  final String? actionIconAssetName;
  final VoidCallback? onClicked;
  final VoidCallback? onActionIconClicked;
  final BorderRadius? borderRadius;
  final Color? backgroundColor;
  final BoxBorder? border;
  final Widget Function(BuildContext context)? cardDetailsBuilder;
  const ProfilePreviewCard({
    super.key,
    required this.profilePreview,
    this.onClicked,
    this.actionIconAssetName,
    this.onActionIconClicked,
    this.borderRadius,
    this.backgroundColor,
    this.border,
    this.cardDetailsBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
            color: backgroundColor,
            shape: BoxShape.rectangle,
            border: border,
            borderRadius: borderRadius),
        child: Padding(
            padding: EdgeInsets.all(8.r),
            child: GestureDetector(
              onTap: onClicked,
              child: cardDetailsBuilder == null
                  ? buildRootCardElement(context)
                  : Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        buildRootCardElement(context),
                        8.verticalSpace,
                        cardDetailsBuilder!(context)
                      ],
                    ),
            )));
  }

  Widget buildRootCardElement(BuildContext context) {
    return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SesameAvatar(
            width: 32.w,
            height: 32.h,
            url: profilePreview.profilePicture,
            placeholder: switch (profilePreview.sex) {
              UserSex.male => "user_male.svg",
              UserSex.female => "user_female.svg"
            },
          ),
          12.horizontalSpace,
          LabelLarge(text: profilePreview.fullName, textAlign: TextAlign.start),
          (actionIconAssetName?.isNotEmpty == true)
              ? Expanded(
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: CustomIcon(
                        iconSVGname: actionIconAssetName!,
                        color: Theme.of(context).primaryColor,
                      )))
              : const SizedBox.shrink()
        ]);
  }
}
