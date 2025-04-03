import 'package:flutter/material.dart';
import 'package:flutter_healthcare/src/presentation/main/models/main_tab.dart';

class MainBottomNavigationbar extends StatefulWidget {
  const MainBottomNavigationbar({
    super.key,
    required this.selectedMainTab,
    required this.onTap,
  });

  final MainTab selectedMainTab;
  final ValueChanged<MainTab> onTap;

  @override
  State<MainBottomNavigationbar> createState() => _MainBottomNavigationbarState();
}

class _MainBottomNavigationbarState extends State<MainBottomNavigationbar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        _onTap(index: index);
      },
      items:
          MainTab.values
              .map(
                (MainTab mainTab) =>
                    _buildBottomNavigationBarItem(mainTab: mainTab),
              )
              .toList(),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem({
    required MainTab mainTab,
  }) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.only(top: 10),
        child:
            widget.selectedMainTab == mainTab
                ? mainTab.selectedIcon
                : mainTab.unselectedIcon,
      ),
      label: '',
    );
  }

  void _onTap({required int index}) {
    if (index == MainTab.home.index) {
      widget.onTap.call(MainTab.home);
    } else if (index == MainTab.calender.index) {
      widget.onTap.call(MainTab.calender);
    } else if (index == MainTab.chat.index) {
      widget.onTap.call(MainTab.chat);
    } else if (index == MainTab.shop.index) {
      widget.onTap.call(MainTab.shop);
    } else if (index == MainTab.profile.index) {
      widget.onTap.call(MainTab.profile);
    }
  }
}
