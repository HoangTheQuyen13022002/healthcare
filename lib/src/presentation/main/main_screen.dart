import 'package:flutter/material.dart';
import 'package:flutter_healthcare/src/core/router/router.dart';
import 'package:flutter_healthcare/src/presentation/main/widgets/main_bottom_navigationbar.dart';
import 'package:flutter_healthcare/src/presentation/pages/chat/chat_screen.dart';
import 'package:flutter_healthcare/src/presentation/pages/home/home_screen.dart';
import 'package:flutter_healthcare/src/presentation/pages/profile/profile_screen.dart';
import 'package:flutter_healthcare/src/presentation/pages/schedule/schedule_screen.dart';
import 'package:flutter_healthcare/src/presentation/pages/shop/shop_screen.dart';

import 'models/main_tab.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  MainTab selectedMainTab = MainTab.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _builBody(),
      bottomNavigationBar: MainBottomNavigationbar(
        selectedMainTab: selectedMainTab,
        onTap: (MainTab value) {
          setState(() {
            selectedMainTab = value;
          });
        },
      ),
    );
  }

  Widget _builBody() {
    switch (selectedMainTab) {
      case MainTab.home:
        return HomeScreen();
      case MainTab.calender:
        return ScheduleScreen();
      case MainTab.chat:
        return ChatScreen();
      case MainTab.shop:
        return ShopScreen();
      case MainTab.profile:
        return ProfileScreen();
    }
  }
}
