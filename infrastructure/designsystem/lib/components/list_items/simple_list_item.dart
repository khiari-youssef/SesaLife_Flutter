import 'package:designsystem/components/images/CustomIcon.dart';
import 'package:designsystem/designsystem_exports.dart';

class SimpleListItem extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String? actionIconAssetName;
  final VoidCallback? onClicked;
  final VoidCallback? onActionIconClicked;
  final BorderRadius borderRadius;
  final Color backgroundColor;
  final BoxBorder? border;
  final Widget Function(BuildContext context)? cardDetailsBuilder;
  const SimpleListItem({
    super.key,
    required this.title,
    this.subtitle,
    this.onClicked,
    this.actionIconAssetName,
    this.onActionIconClicked,
    required this.borderRadius,
    required this.backgroundColor,
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
    );
  }

  Widget buildRootCardElement(BuildContext context) {
    return GestureDetector(
        onTap: onClicked,
        child: Padding(
            padding: EdgeInsets.all(8.r),
            child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        LabelLarge(text: title, textAlign: TextAlign.start),
                        4.verticalSpace,
                        LabelMedium(
                            text: title,
                            textAlign: TextAlign.start,
                            color: const Color(0xFF49454F)),
                      ]),
                  (actionIconAssetName?.isNotEmpty == true)
                      ? Expanded(
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: CustomIcon(
                                iconSVGname: actionIconAssetName!,
                                color: Theme.of(context).primaryColor,
                              )))
                      : const SizedBox.shrink()
                ])));
  }
}
