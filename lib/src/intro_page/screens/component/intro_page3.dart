import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

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
              image: AssetImage("assets/images/image7.jpeg"),
              fit: BoxFit.cover,
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
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "People don't take trips, trips take people",
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
          padding: EdgeInsets.all(8.0),
          child: Text(
            "At Friends tours and travel, we customize reliable and trutworty educational tours to destinations all over the world",
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
