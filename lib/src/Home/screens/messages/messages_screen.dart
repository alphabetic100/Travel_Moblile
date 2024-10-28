import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_mobile/model/data_model.dart';
import 'package:travel_mobile/src/Home/pages/controllers/nav_bar_controller.dart';
import 'package:travel_mobile/src/Home/screens/messages/inbox_screen.dart';

class MessagesScreen extends StatelessWidget {
  MessagesScreen({super.key});
  final NavBarController _barController = Get.put(NavBarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          "Messages",
          style: TextStyle(fontFamily: "OutBold"),
        ),
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
            icon: const Icon(Icons.menu),
            style: ButtonStyle(
                backgroundColor:
                    WidgetStateProperty.all(Colors.grey.withOpacity(0.3))),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Messegas",
                  style: TextStyle(fontFamily: "OutBold", fontSize: 20),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.edit_note))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            //Search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                    prefixIcon: const Icon(CupertinoIcons.search),
                    hintText: "Search for chats and messages",
                    hintStyle: const TextStyle(
                        fontFamily: "Outfit", color: Colors.grey),
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(25),
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Expanded(child: ChatAccounts())
          ],
        ),
      ),
    );
  }
}

// Account Tile

class ChatAccounts extends StatelessWidget {
  const ChatAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      
      itemCount: userList.length,
                                   
      itemBuilder: (context, index) {
        final accounts = userList[index];
        return ListTile(
          onTap: () => Get.to(()=>  InboxScreen(username: accounts["userName"], activeStatus: accounts["activeStatus"])),
          leading: Stack(
            children: [
              CircleAvatar(
                radius: 24,
                child: Center(
                  child: Text(accounts["userName"][0]),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color:
                        accounts["activeStatus"] ? Colors.green : Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          title: Text(
            accounts["userName"],
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Row(
            children: [
              if (!accounts["isRead"])
                const Icon(Icons.check, color: Colors.grey, size: 16),
              if (accounts["isRead"])
                const Icon(Icons.check_circle, color: Colors.blue, size: 16),
              const SizedBox(width: 4),
              Expanded(
                child: Text(
                  accounts["messagePreview"],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          trailing: Text(
            userList[index]["timestamp"].toString(),
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          ),
        );
      },
    );
  }
}
