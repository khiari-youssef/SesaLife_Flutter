import 'package:designsystem/designsystem_exports.dart';
import 'package:flutter/material.dart';

import 'sesame_tab_item.dart';

class SesameTabBar extends StatelessWidget {
  final Function(int selectedIndex)? onTabSelected;
  final TabController controller;
  final List<SesameTabItem> tabs;
  final bool isScrollable;
  const SesameTabBar(
      {super.key,
      this.onTabSelected,
      required this.controller,
      required this.tabs,
      this.isScrollable = false});
  @override
  Widget build(BuildContext context) {
    BoxDecoration tabDecoration = BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: const Color(0x1F767680));
    BoxDecoration indicatorDecoration = tabDecoration.copyWith(
        color: Colors.white,
        border: Border.all(color: Theme.of(context).colorScheme.primary));
    return DecoratedBox(
        decoration: tabDecoration,
        child: TabBar(
            controller: controller,
            tabs: tabs
                .map((model) => Tab(text: model.label.toUpperCase()))
                .toList(),
            tabAlignment: isScrollable ? null : TabAlignment.fill,
            onTap: onTabSelected,
            indicator: indicatorDecoration,
            labelStyle: Theme.of(context).textTheme.labelMedium,
            labelColor: Theme.of(context).colorScheme.primary,
            unselectedLabelColor: const Color(0xFF77767E),
            indicatorSize: TabBarIndicatorSize.tab,
            isScrollable: isScrollable,
            dividerColor: Colors.transparent));
  }
}
