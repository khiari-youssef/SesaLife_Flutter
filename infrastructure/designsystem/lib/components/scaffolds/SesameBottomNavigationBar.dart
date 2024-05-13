import 'package:designsystem/components/images/CustomIcon.dart';
import 'package:flutter/material.dart';

class SesameBottomNavigationBar extends StatelessWidget {
  const SesameBottomNavigationBar(
      {super.key, required this.onItemSelected, required this.selectedIndex});
  final Function(int selectedItem) onItemSelected;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    Color iconsColor = Theme.of(context).colorScheme.primary;
    List<BottomNavigationBarItem> navBarItems = [
      BottomNavigationBarItem(
          icon: CustomIcon(
              iconSVGname: "ic_news_unselected.svg", color: iconsColor),
          activeIcon: CustomIcon(
              iconSVGname: "ic_news_selected.svg", color: iconsColor),
          label: "News"),
      BottomNavigationBarItem(
          icon: CustomIcon(
              iconSVGname: "ic_calendar_unselected.svg", color: iconsColor),
          activeIcon: CustomIcon(
              iconSVGname: "ic_calendar_selected.svg", color: iconsColor),
          label: "Calendar"),
      BottomNavigationBarItem(
          icon: CustomIcon(
            iconSVGname: "ic_notification_unselected.svg",
            color: iconsColor,
          ),
          activeIcon: CustomIcon(
              iconSVGname: "ic_notification_selected.svg", color: iconsColor),
          label: "Notifications"),
      BottomNavigationBarItem(
          icon: CustomIcon(
              iconSVGname: "ic_profile_unselected.svg", color: iconsColor),
          activeIcon: CustomIcon(
              iconSVGname: "ic_profile_selected.svg", color: iconsColor),
          label: "Profile")
    ];

    return BottomNavigationBar(
        currentIndex: selectedIndex,
        items: navBarItems,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFFFBFBFB),
        selectedItemColor: Theme.of(context).colorScheme.surfaceVariant,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: onItemSelected);
  }
}
