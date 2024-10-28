import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassPage extends StatelessWidget {
  const ForgotPassPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //back button
                SizedBox(
                  height: 80,
                  width: Get.width,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Get.isDarkMode ? Colors.grey : Colors.white,
                          ),
                          child: const Center(
                            child: Icon(
                              CupertinoIcons.back,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Forgot Password!",
                  style: TextStyle(
                    fontFamily: "OutBold",
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Enter your email account to reset your password",
                  softWrap: true,
                  style: TextStyle(fontFamily: "Outfit", color: Colors.grey),
                ),
                const SizedBox(
                  height: 30,
                ),

                //Full name Box
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter you Email',
                      fillColor: Colors.grey.shade200, // Background color
                      filled: true, // Fill the background
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 15.0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none, // No visible border
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                const SizedBox(
                  height: 20,
                ),
                //sign in button
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: 350,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.blue,
                    ),
                    child: const Center(
                      child: Text(
                        "Reset Password",
                        style: TextStyle(
                          fontFamily: "Outfit",
                          //  fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
