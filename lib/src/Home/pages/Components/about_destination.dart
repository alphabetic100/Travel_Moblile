import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

class AboutDestination extends StatelessWidget {
  const AboutDestination(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.location,
      required this.rattings,
      required this.price,
      required this.description});
  final String imagePath;
  final String title;
  final String location;
  final String rattings;
  final String price;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          "Details",
          style: TextStyle(fontFamily: "OutBold", color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(CupertinoIcons.back),
          color: Colors.white,
          style: ButtonStyle(
              backgroundColor:
                  WidgetStateProperty.all<Color>(Colors.grey.withOpacity(0.3))),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.bookmark,
              color: Colors.white,
            ),
            style: ButtonStyle(
                backgroundColor:
                    WidgetStateProperty.all(Colors.grey.withOpacity(0.3))),
          ),
        ],
      ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Stack(
          children: [
            //image container
            Container(
              height: Get.height * 0.5,
              width: Get.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover)),
            ),
            //about details and more
            Positioned(
              bottom: 0,
              child: Container(
                height: Get.height * 0.6,
                width: Get.width,
                decoration: BoxDecoration(
                  color: Get.isDarkMode ? Colors.black : Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: 10,
                            right: Get.width * 0.35,
                            left: Get.width * 0.35),
                        child: const Divider(
                          thickness: 3,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: TextStyle(
                                    fontFamily: "OutBold",
                                    fontSize: 20,
                                    color: Get.isDarkMode
                                        ? Colors.white
                                        : Colors.black),
                              ),
                              Text(
                                location,
                                style: const TextStyle(
                                    fontFamily: "Outfit", color: Colors.grey),
                              ),
                            ],
                          ),
                          const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://i.pinimg.com/736x/31/f5/09/31f5095514322024b16d42d042e0a4cc.jpg"),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.location_on),
                              Text(
                                location.split(",")[0],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Text(
                                rattings,
                                style: TextStyle(
                                    color: Get.isDarkMode
                                        ? Colors.white
                                        : Colors.black),
                              ),
                              //number of ratting should comes from server, so there i'm using constant value

                              const Text(
                                "(1200)",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          Text.rich(
                            TextSpan(
                              children: const <TextSpan>[
                                TextSpan(
                                    text: "/person",
                                    style: TextStyle(color: Colors.grey))
                              ],
                              text: price,
                              style: const TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildCircleAvatar('assets/images/image1.jpeg'),
                          _buildCircleAvatar('assets/images/image2.jpeg'),
                          _buildCircleAvatar('assets/images/image3.jpeg'),
                          _buildCircleAvatar('assets/images/image4.jpeg'),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "About Destination",
                        style: TextStyle(
                            fontFamily: "Outfit",
                            fontSize: 20,
                            color: Get.isDarkMode ? Colors.white : Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 80),
                            child: ReadMoreText(
                              description,
                              style: const TextStyle(
                                  fontFamily: "Outfit",
                                  fontSize: 17,
                                  color: Colors.grey),
                              lessStyle: const TextStyle(
                                  color: Colors.orange, fontFamily: "Outfit"),
                              moreStyle: const TextStyle(
                                  color: Colors.orange, fontFamily: "Outfit"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //booking button
            Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: Container(
                  height: 50,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.blue,
                  ),
                  child: const Center(
                    child: Text(
                      "Book Now",
                      style: TextStyle(
                        fontFamily: "Outfit",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

Widget _buildCircleAvatar(String imagePath) {
  return CircleAvatar(
    radius: 30, // Adjust the size
    backgroundImage: AssetImage(imagePath),
  );
}
