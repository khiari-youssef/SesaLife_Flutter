import '../../exports.dart';

class _ExpandablePreviewListItemState extends State<ExpandablePreviewListItem> {
  late bool isExpanded;

  @override
  void initState() {
    super.initState();
    isExpanded = widget.isExpanded;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 600),
        curve: Curves.linear,
        child: ProfilePreviewCard(
          profilePreview: widget.profilePreview,
          onClicked: () {
            setState(() {
              isExpanded = !isExpanded;
            });
            widget.onExpandStateChanged(isExpanded);
          },
          actionIconAssetName: "ic_arrow_${isExpanded ? "up" : "down"}_dir.svg",
          borderRadius: BorderRadius.circular(8.r),
          backgroundColor: Theme.of(context).colorScheme.surfaceContainerLow,
          cardDetailsBuilder: isExpanded
              ? (context) {
                  return widget.expandedStateWidgetBuilder();
                }
              : null,
        ));
  }
}

class ExpandablePreviewListItem extends StatefulWidget {
  final UserProfilePreview profilePreview;
  final bool isExpanded;
  final Widget Function() expandedStateWidgetBuilder;
  final Function(bool isExpanded) onExpandStateChanged;
  const ExpandablePreviewListItem(
      {super.key,
      required this.profilePreview,
      required this.onExpandStateChanged,
      this.isExpanded = false,
      required this.expandedStateWidgetBuilder});
  @override
  State<StatefulWidget> createState() => _ExpandablePreviewListItemState();
}
