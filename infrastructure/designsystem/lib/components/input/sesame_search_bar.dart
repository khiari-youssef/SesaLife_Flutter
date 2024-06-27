import '../../designsystem_exports.dart';

class SesameSearchBarState extends State<SesameSearchBar> {
  @override
  Widget build(BuildContext context) {
    return SearchBar(
      shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r))),
      backgroundColor: WidgetStatePropertyAll(
          Theme.of(context).colorScheme.surfaceContainerLow),
      controller: widget.searchController,
      textStyle: WidgetStatePropertyAll(Theme.of(context)
          .textTheme
          .bodyMedium
          ?.copyWith(color: Theme.of(context).colorScheme.onSurface)),
      hintText: widget.placeholder,
      hintStyle: WidgetStatePropertyAll(Theme.of(context)
          .textTheme
          .bodyMedium
          ?.copyWith(color: Theme.of(context).colorScheme.onSurface)),
      onChanged: widget.onQueryChanged,
    );
  }
}

class SesameSearchBar extends StatefulWidget {
  final TextEditingController searchController;
  final String placeholder;
  final Function(String query) onQueryChanged;
  const SesameSearchBar(
      {super.key,
      required this.searchController,
      required this.placeholder,
      required this.onQueryChanged});

  @override
  State<StatefulWidget> createState() => SesameSearchBarState();
}
