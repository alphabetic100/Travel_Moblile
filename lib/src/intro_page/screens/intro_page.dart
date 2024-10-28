import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_mobile/src/intro_page/controller/intro_page_controller.dart';
import 'package:travel_mobile/src/Authentication/screens/sign_in_page.dart';
import 'package:travel_mobile/src/intro_page/screens/component/intro_page1.dart';
import 'package:travel_mobile/src/intro_page/screens/component/intro_page2.dart';
import 'package:travel_mobile/src/intro_page/screens/component/intro_page3.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final PageController _controller = PageController();
  final IntroPageController _introPageController =
      Get.put(IntroPageController());
  int routNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        //page view start
        PageView(
          onPageChanged: (value) {
            _introPageController.pageNumber.value = value;
            _introPageController.buttonText(value);
            routNumber = value;
          },
          controller: _controller,
          children: const [
            IntroPage1(),
            IntroPage2(),
            IntroPage3(),
          ],
        ),
        // Navigate Buttorn
        Container(
          alignment: const Alignment(0, 0.90),
          child: GestureDetector(
            onTap: () {
              _controller.nextPage(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.linear);
              routNumber++;
              if (routNumber > 2) {
                Get.to(() => SignInPage());
              }
            },
            child: Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.blue),
              child: Center(
                child: Obx(() {
                  return Text(
                    _introPageController.buttonName.toString(),
                    style: const TextStyle(
                      fontFamily: "Outfit",
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  );
                }),
              ),
            ),
          ),
        ),

        //Page Indicatro
        Container(
          alignment: const Alignment(0, 0.75),
          child: SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: const ExpandingDotsEffect(),
          ),
        ),
      ],
    ));
  }
}
