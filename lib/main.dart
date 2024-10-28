import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_mobile/src/Home/pages/Components/theme_data.dart';

import 'package:travel_mobile/src/intro_page/screens/intro_page.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme().lightTheme,
      darkTheme: CustomTheme().darkTheme,
      home: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const IntroPage();
  }
}
