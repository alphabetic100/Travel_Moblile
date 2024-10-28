import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:travel_mobile/src/Home/pages/controllers/nav_bar_controller.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  final NavBarController _barController = Get.put(NavBarController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SalomonBottomBar(
        onTap: (value) {
          _barController.controller.jumpToPage(
            value,
          );
          _barController.selectedIndex.value = value;
        },
        currentIndex: _barController.selectedIndex.value,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.blueGrey.shade100.withOpacity(0.1),
        items: [
          SalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text(
                "Home",
                style: TextStyle(fontFamily: "OutBold"),
              )),
          SalomonBottomBarItem(
              icon: const Icon(Icons.calendar_month),
              title: const Text(
                "Calander",
                style: TextStyle(fontFamily: "OutBold"),
              )),
          SalomonBottomBarItem(
              icon: const Icon(CupertinoIcons.search),
              title: const Text(
                "Search",
                style: TextStyle(fontFamily: "OutBold"),
              )),
          SalomonBottomBarItem(
              icon: const Icon(CupertinoIcons.ellipses_bubble),
              title: const Text(
                "Massages",
                style: TextStyle(fontFamily: "OutBold"),
              )),
          SalomonBottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text(
                "Profile",
                style: TextStyle(fontFamily: "OutBold"),
              ))
        ],
      ),
    );
  }
}
