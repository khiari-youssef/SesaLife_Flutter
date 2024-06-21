import '../../designsystem_exports.dart';

class ExpandableListItemState extends State<ExpandableListItem> {
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
        child: SimpleListItem(
          title: widget.title,
          subtitle: widget.subTitle,
          onClicked: () {
            setState(() {
              isExpanded = !isExpanded;
            });
            widget.onExpandStateChanged(isExpanded);
          },
          actionIconAssetName: "ic_arrow_${isExpanded ? "up" : "down"}_dir.svg",
          borderRadius: BorderRadius.circular(8.r),
          backgroundColor: Theme.of(context).colorScheme.surfaceContainerHigh,
          cardDetailsBuilder: isExpanded
              ? (context) {
                  return widget.expandedStateWidgetBuilder();
                }
              : null,
        ));
  }
}

class ExpandableListItem extends StatefulWidget {
  final String title;
  final String? subTitle;
  final bool isExpanded;
  final Widget Function() expandedStateWidgetBuilder;
  final Function(bool isExpanded) onExpandStateChanged;
  const ExpandableListItem(
      {super.key,
      required this.onExpandStateChanged,
      this.isExpanded = false,
      required this.expandedStateWidgetBuilder,
      required this.title,
      this.subTitle});
  @override
  State<StatefulWidget> createState() => ExpandableListItemState();
}
