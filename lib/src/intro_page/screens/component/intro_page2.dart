import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    final sHeight = MediaQuery.of(context).size.height;
    final sWidth = MediaQuery.of(context).size.width;
    return Column(
      //  mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: sHeight * 0.5,
          width: sWidth,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/image6.jpeg"),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            "It's a big world out there go explore",
            style: TextStyle(
              fontFamily: "OutBold",
              fontSize: 30,
              color: Get.isDarkMode ? Colors.white : Colors.black,
            ),
            softWrap: true,
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(12),
          child: Text(
            "To get the best of your adventure you just need to lave and go where you like. we are waiting for you",
            style: TextStyle(
              fontFamily: "Outfit",
              fontSize: 20,
              color: Colors.grey,
            ),
            softWrap: true,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
