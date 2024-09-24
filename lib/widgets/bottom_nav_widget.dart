import 'package:final_why_app/constants.dart';
import 'package:final_why_app/views/alarm.dart';
import 'package:final_why_app/views/day_one_view.dart';
import 'package:final_why_app/views/day_two_view.dart';
import 'package:final_why_app/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

PersistentTabController _controller = PersistentTabController(initialIndex: 0);

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      navBarHeight: kBottomNavigationBarHeight,
      navBarStyle: NavBarStyle.style9, //
      backgroundColor: kpr2color,
    );
  }
}

List<Widget> _buildScreens() {
  return const [HomeView(), DayOneView(), DayTwoView(), AlarmView()];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.home),
      activeColorPrimary: kprimeryColor,
      inactiveColorPrimary: Colors.black,
      title: 'Home',
    ),
    PersistentBottomNavBarItem(
      icon: const ImageIcon(AssetImage('assets/images/1.png')),
      activeColorPrimary: kprimeryColor,
      inactiveColorPrimary: Colors.black,
      title: "اليوم الاول",
    ),
    PersistentBottomNavBarItem(
        icon: const ImageIcon(AssetImage('assets/images/2.png')),
        activeColorPrimary: kprimeryColor,
        inactiveColorPrimary: Colors.black,
        title: "اليوم الثاني"),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.notifications),
      activeColorPrimary: kprimeryColor,
      inactiveColorPrimary: Colors.black,
      title: "الاشعارات",
    ),
  ];
}
