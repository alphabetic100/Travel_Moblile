import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_mobile/model/data_model.dart';
import 'package:travel_mobile/src/Home/pages/Components/about_destination.dart';
import 'package:travel_mobile/src/Home/screens/favorite_places.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 12, right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Row(
                      children: [
                        Builder(builder: (context) {
                          return InkWell(
                            onTap: () {
                              Scaffold.of(context).openDrawer();
                            },
                            child: const CircleAvatar(
                                foregroundImage:
                                    AssetImage("assets/images/profile.jpeg")

                                //Image from server
                                ),
                          );
                        }),

                        // name from server
                        const Text(
                          "Nazmul Hasan",
                          style: TextStyle(fontFamily: "Outfit", fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Get.changeTheme(Get.isDarkMode
                          ? ThemeData.light()
                          : ThemeData.dark());
                    },
                    icon: Stack(
                      children: [
                        const Icon(
                          Icons.notifications_outlined,
                          size: 30,
                        ),
                        Positioned(
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.amber,
                            ),
                            constraints: const BoxConstraints(
                              minWidth: 15,
                              minHeight: 15,
                            ),
                            child: const Text(
                              "1",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 8,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ],
                    ))
              ],
            ),

            const SizedBox(
              height: 20,
            ),
            const Text(
              "Explore the",
              style: TextStyle(
                fontFamily: "Outfit",
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Beautiful World!",
              style: TextStyle(
                fontFamily: "OutBold",
                fontSize: 35,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Best Destination",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => const FavoritePlaces());
                  },
                  child: const Text(
                    "View all",
                    style: TextStyle(
                      fontFamily: "Outfit",
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            //
            //
            // List view of best destinations
            SizedBox(
              height: Get.height * 0.4,
              width: Get.width * 0.95,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: Get.height * 0.2,
                        width: Get.width * 0.7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Get.isDarkMode
                              ? Colors.grey.withOpacity(0.2)
                              : Colors.white,
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Image Box
                                  Align(
                                    alignment: Alignment.center,
                                    child: GestureDetector(
                                      onTap: () {
                                        Get.to(() => AboutDestination(
                                            imagePath: assetImage[index],
                                            title: placeDetails[index]["name"],
                                            location: placeDetails[index]
                                                ["location"],
                                            rattings: placeDetails[index]
                                                ["ratings"],
                                            price: placeDetails[index]["price"],
                                            description: placeDetails[index]
                                                ["description"]));
                                      },
                                      child: Container(
                                        height: Get.height * 0.28,
                                        width: Get.width * 0.6,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.3),
                                              offset: const Offset(2, 2),
                                              spreadRadius: 3,
                                              blurRadius: 7,
                                            )
                                          ],
                                          image: DecorationImage(
                                              image:
                                                  AssetImage(assetImage[index]),
                                              fit: BoxFit.fill),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: Get.width * 0.4,
                                          child: Text(
                                            placeDetails[index]["name"],
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              fontFamily: "OutBold",
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            Text(placeDetails[index]["ratings"])
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.location_on,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            height: 25,
                                            width: 180,
                                            child: FittedBox(
                                              child: Text(
                                                placeDetails[index]["location"],
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                  fontFamily: "Outfit",
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                        width: 50,
                                        child: Stack(
                                          children: [
                                            const Positioned(
                                              right: 20,
                                              child: CircleAvatar(
                                                radius: 10,
                                                backgroundImage: AssetImage(
                                                    "assets/images/image9.jpeg"),
                                              ),
                                            ),
                                            const Positioned(
                                                right: 10,
                                                child: CircleAvatar(
                                                  radius: 10,
                                                  backgroundImage: AssetImage(
                                                      "assets/images/image9.jpeg"),
                                                )),
                                            Positioned(
                                              right: 1,
                                              child: Container(
                                                height: 20,
                                                width: 20,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: Colors.blue),
                                                child: const Center(
                                                  child: Text(
                                                    "+30",
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                                right: 22,
                                top: 18,
                                child: IconButton(
                                    highlightColor: Colors.blue,
                                    style: ButtonStyle(
                                        backgroundColor:
                                            WidgetStateProperty.all<Color>(
                                      Colors.grey,
                                    )),
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.bookmark_outline,
                                      color: Colors.white,
                                    )))
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
