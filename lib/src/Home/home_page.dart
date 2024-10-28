import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_mobile/src/Home/pages/Components/bottom_nav_bar.dart';
import 'package:travel_mobile/src/Home/pages/Components/navigation_drawer.dart';
import 'package:travel_mobile/src/Home/pages/controllers/nav_bar_controller.dart';
import 'package:travel_mobile/src/Home/screens/calender_screen/calender_screen.dart';
import 'package:travel_mobile/src/Home/screens/home_screen.dart';
import 'package:travel_mobile/src/Home/screens/messages/messages_screen.dart';
import 'package:travel_mobile/src/Home/screens/profile_screen.dart';
import 'package:travel_mobile/src/Home/screens/search_screen.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final NavBarController _barController = Get.put(NavBarController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      drawer: const ProfileDetails(),
      body: PageView(
        onPageChanged: (value) {
          _barController.selectedIndex.value = value;
        },
        controller: _barController.controller,
        children: [
          const HomeScreen(),
          CalenderScreen(),
          const SearchScreen(),
          MessagesScreen(),
          const ProfileScreen()
        ],
      ),
    );
  }
}
