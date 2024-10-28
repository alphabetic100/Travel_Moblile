import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_mobile/model/data_model.dart';
import 'package:travel_mobile/src/Home/pages/controllers/nav_bar_controller.dart';
import 'package:travel_mobile/src/Home/pages/Components/about_destination.dart';
import 'package:travel_mobile/src/Home/screens/calender_screen/components/place_list.dart';
import 'package:travel_mobile/src/Home/screens/favorite_places.dart';

class CalenderScreen extends StatelessWidget {
  CalenderScreen({super.key});
  final NavBarController _barController = Get.put(NavBarController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
              color: Get.isDarkMode ? Colors.white : Colors.black,
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(
                      Colors.grey.withOpacity(0.3))),
              onPressed: () {
                _barController.selectedIndex.value = 0;
                _barController.controller.jumpToPage(0);
              },
              icon: const Icon(
                CupertinoIcons.back,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Stack(
                  children: [
                    Icon(
                      Icons.notifications_outlined,
                      size: 30,
                      color: Get.isDarkMode ? Colors.white : Colors.black,
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          color: Colors.orange, // Notification badge color
                          borderRadius: BorderRadius.circular(6),
                        ),
                        constraints: const BoxConstraints(
                          minWidth: 15,
                          minHeight: 15,
                        ),
                        child: const Text(
                          '1', // Number of notifications
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
          centerTitle: true,
          title: Text(
            "Schedule",
            style: TextStyle(
                fontFamily: "OutBold",
                color: Get.isDarkMode ? Colors.white : Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Container(
                height: 100,
                width: Get.width,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(5)),
                child: DatePicker(
                  DateTime.now(),
                  initialSelectedDate: DateTime.now(),
                  selectedTextColor: Colors.white,
                  deactivatedColor: Colors.grey,
                  selectionColor: Colors.blue,
                  dayTextStyle: const TextStyle(
                    fontFamily: "OutBold",
                    color: Colors.grey,
                  ),
                  monthTextStyle: const TextStyle(
                    fontFamily: "Outfit",
                    color: Colors.grey,
                  ),
                  dateTextStyle: TextStyle(
                      color: Get.isDarkMode ? Colors.white : Colors.black),
                  calendarType: CalendarType.gregorianDate,
                  daysCount: 31,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Schedule",
                    style: TextStyle(
                        fontFamily: "OutBold",
                        fontSize: 25,
                        color: Get.isDarkMode ? Colors.white : Colors.black),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(() => const FavoritePlaces());
                      },
                      child: const Text(
                        "View all",
                        style:
                            TextStyle(fontFamily: "Outfit", color: Colors.blue),
                      ))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (builder, index) {
                      return GestureDetector(
                        onTap: () {
                          Get.to(() => AboutDestination(
                              imagePath: assetImage[index],
                              title: placeDetails[index]["name"],
                              location: placeDetails[index]["location"],
                              rattings: placeDetails[index]["ratings"],
                              price: placeDetails[index]["price"],
                              description: placeDetails[index]["description"]));
                        },
                        child: PlaceList(
                          title: placeDetails[index]["name"],
                          location: placeDetails[index]["location"],
                          creatDate:
                              placeDetails[index]["createDate"].toString(),
                          imagepath: assetImage[index],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
