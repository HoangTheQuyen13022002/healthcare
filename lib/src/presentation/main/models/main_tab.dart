import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum MainTab {home,calender, chat, shop, profile}

extension MainTabExtention on MainTab {
  Widget get selectedIcon{
    switch(this){
      case MainTab.home:
        return SvgPicture.asset('assets/icons/home_selected.svg');
      case MainTab.calender:
        return SvgPicture.asset('assets/icons/calendar_selected.svg');
      case MainTab.chat:
        return SvgPicture.asset('assets/icons/chat_selected.svg');
      case MainTab.shop:
        return SvgPicture.asset('assets/icons/shop_selected.svg');
      case MainTab.profile:
        return SvgPicture.asset('assets/icons/profile_selected.svg');
    }
  }

  Widget get unselectedIcon{
    switch(this){
      case MainTab.home:
        return SvgPicture.asset('assets/icons/home_selected.svg',color: Colors.grey,);
      case MainTab.calender:
        return SvgPicture.asset('assets/icons/calendar_selected.svg',color: Colors.grey,);
      case MainTab.chat:
        return SvgPicture.asset('assets/icons/chat_selected.svg',color: Colors.grey,);
      case MainTab.shop:
        return SvgPicture.asset('assets/icons/shop.svg');
      case MainTab.profile:
        return SvgPicture.asset('assets/icons/profile_selected.svg',color: Colors.grey,);
    }
  }
}