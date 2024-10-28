import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_mobile/model/data_model.dart';
import 'package:travel_mobile/src/Home/pages/Components/about_destination.dart';

class FavoritePlaces extends StatelessWidget {
  const FavoritePlaces({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          "Favorite Place",
          style: TextStyle(fontFamily: "OutBold"),
        ),
        leading: IconButton(
          color: Get.isDarkMode ? Colors.white : Colors.black,
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            CupertinoIcons.back,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              "Favorite places",
              style: TextStyle(
                fontFamily: "OutBold",
                color: Get.isDarkMode ? Colors.white : Colors.black,
                fontSize: 25,
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: placeDetails.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8, // Adjust this ratio to fit your needs
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => AboutDestination(
                            imagePath: assetImage[index],
                            title: placeDetails[index]["name"],
                            location: placeDetails[index]["location"],
                            rattings: placeDetails[index]["ratings"],
                            price: placeDetails[index]["price"],
                            description: placeDetails[index]["description"]));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Get.isDarkMode
                                ? Colors.grey.withOpacity(0.3)
                                : null,
                          ),
                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AspectRatio(
                                    aspectRatio: 1.1,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          image: DecorationImage(
                                            image:
                                                AssetImage(assetImage[index]),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: SizedBox(
                                      width: Get.width * 0.4,
                                      child: Text(
                                        placeDetails[index]["name"],
                                        style: const TextStyle(
                                          fontFamily: "Outfit",
                                          fontWeight: FontWeight.bold,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.location_on),
                                        Text(placeDetails[index]["location"]
                                            .toString()
                                            .split(',')[0])
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Positioned(
                                top: 5,
                                right: 10,
                                child: IconButton(
                                  onPressed: () {
                                    Get.snackbar(
                                      "Favorite added",
                                      "Visit the page to learn more",
                                      snackPosition: SnackPosition.BOTTOM,
                                      duration: const Duration(seconds: 2),
                                      isDismissible: true,
                                      backgroundColor: Colors.grey.shade200,
                                      colorText: Colors.black,
                                      icon: const Icon(Icons.favorite_outline),
                                      onTap: (snack) {
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
                                    );
                                  },
                                  icon: const Icon(
                                    Icons.favorite_outline,
                                    color: Colors.pink,
                                  ),
                                  style: ButtonStyle(
                                      backgroundColor: WidgetStatePropertyAll(
                                          Colors.grey.shade200
                                              .withOpacity(0.4))),
                                ),
                              )
                            ],
                          )),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
