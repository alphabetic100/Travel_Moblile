import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlaceList extends StatelessWidget {
  const PlaceList({
    super.key,
    required this.title,
    required this.location,
    required this.creatDate,
    required this.imagepath,
  });

  final String title;
  final String location;
  final String creatDate;
  final String imagepath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: 130,
        width: Get.width,
        constraints: const BoxConstraints(
            minHeight: 120), // Set a minimum height constraint
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey.withOpacity(0.3),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image Container
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagepath),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                    ),
                  ],
                ),
              ),
            ),
            // Expanded Column for Text
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Date Row
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_today,
                          color: Colors.grey,
                          size: 16,
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            creatDate,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontFamily: "Outfit",
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    // Title with TextOverflow Ellipsis
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontFamily: "OutBold",
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 4),
                    // Location Row
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.grey,
                          size: 16,
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            location,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontFamily: "Outfit",
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Center(
                child: Icon(
              CupertinoIcons.forward,
            )),
          ],
        ),
      ),
    );
  }
}
