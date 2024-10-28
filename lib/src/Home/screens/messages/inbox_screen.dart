import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_mobile/model/data_model.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen(
      {super.key, required this.username, required this.activeStatus});
  final String username;
  final bool activeStatus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Column(
          children: [
            Text(
              username,
              style: const TextStyle(fontFamily: "OutBold"),
            ),
            activeStatus
                ? const Text(
                    "Active now",
                    style: TextStyle(
                      fontFamily: "Outfit",
                      color: Colors.green,
                    ),
                  )
                : const Text(
                    "Ideal",
                    style: TextStyle(fontFamily: 'Outfit', color: Colors.grey),
                  )
          ],
        ),
        leading: IconButton(
          style: ButtonStyle(
              backgroundColor:
                  WidgetStatePropertyAll(Colors.grey.withOpacity(0.3))),
          color: Get.isDarkMode ? Colors.white : Colors.black,
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            CupertinoIcons.back,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.phone,
                size: 30,
              ))
        ],
      ),
      body: const InboxBoady(),
    );
  }
}

//inbox boady starts from here
class InboxBoady extends StatelessWidget {
  const InboxBoady({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 10),
      child: SingleChildScrollView(
        reverse: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: chatData.length,
              itemBuilder: (context, index) {
                return Container(
                    alignment: Alignment.bottomCenter,
                    width: Get.width,
                    child: chatData[index]['senderId'] == "user1"
                        ? Align(
                            alignment: Alignment.topLeft,
                            child: chatData[index]["type"] == "text"
                                ? Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                        width: Get.width * 0.6,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          color: Colors.grey,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            chatData[index]["content"],
                                            style: const TextStyle(
                                                fontFamily: "Outfit",
                                                fontSize: 20),
                                          ),
                                        )),
                                  )
                                : Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Container(
                                      height: Get.height * 0.3,
                                      width: Get.width * 0.4,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                chatData[index]["content"],
                                              ),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                          )
                        : Align(
                            alignment: Alignment.topRight,
                            child: chatData[index]["type"] == "text"
                                ? Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: Get.width * 0.6,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            color: Colors.blue,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              chatData[index]["content"],
                                              style: const TextStyle(
                                                  fontFamily: "Outfit",
                                                  fontSize: 20),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 0,
                                          right: 10,
                                          child: Icon(
                                            Icons.done_all,
                                            color: chatData[index]["isRead"]
                                                ? Colors.green
                                                : Colors.grey,
                                            size: chatData[index]["isRead"]
                                                ? 20
                                                : 16,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                : Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: Get.height * 0.3,
                                          width: Get.width * 0.4,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                    chatData[index]["content"],
                                                  ),
                                                  fit: BoxFit.cover)),
                                        ),
                                        Positioned(
                                            bottom: 0,
                                            right: 0,
                                            child: chatData[index]["isRead"]
                                                ? const Icon(
                                                    Icons.check,
                                                    weight: 5,
                                                    color: Colors.green,
                                                  )
                                                : const Icon(
                                                    Icons.check,
                                                    weight: 5,
                                                    color: Colors.white,
                                                  ))
                                      ],
                                    ),
                                  ),
                          ));
              },
            ),
            Row(
              children: [
                SizedBox(
                    height: 50,
                    width: Get.width * 0.8,
                    child: TextField(
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        //  enabledBorder: InputBorder.none,

                        suffix: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.attachment_sharp)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        filled: true,
                        fillColor:
                            Get.isDarkMode ? Colors.grey.shade200 : Colors.grey,
                      ),
                    )),
                IconButton(
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.mic,
                      color: Colors.white,
                    ))
              ],
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
