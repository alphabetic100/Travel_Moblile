import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_mobile/src/Authentication/controller/sign_up_controlleer.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  final SignUpControlleer _signUpControlleer = Get.put(SignUpControlleer());
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
                  "Sign up now",
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
                  "Please fill the details and create account",
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
                      hintText: 'Enter your full name',
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

                //
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your Email',
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
                //PassWord Box
                //
                const SizedBox(
                  height: 20,
                ),
                //
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Obx(
                      () => TextField(
                        obscureText: _signUpControlleer.isPassVisibility.value,
                        decoration: InputDecoration(
                          hintText: 'Enter your password',
                          suffixIcon: IconButton(
                            onPressed: () {
                              _signUpControlleer.toggleVisibility();
                            },
                            icon: Icon(
                              _signUpControlleer.isPassVisibility.value
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                          fillColor: Colors.grey.shade200, // Background color
                          filled: true,
                          // Fill the background
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
                    )),
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
                        "Sign up",
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Allready have an account?",
                      style: TextStyle(
                        fontFamily: "Outfit",
                        color: Colors.grey,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                            fontFamily: "OutBold",
                            color: Colors.blue,
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                const Text(
                  "Or connet",
                  style: TextStyle(fontFamily: "Outfit", color: Colors.grey),
                ),
                SizedBox(
                  height: Get.height * 0.1,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://i.pinimg.com/564x/fb/4c/fc/fb4cfc050d8ea70455dfe540b8f2b9a9.jpg",
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://i.pinimg.com/564x/76/49/58/7649586e0784b7f830053467851846f9.jpg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://i.pinimg.com/564x/f0/c3/2f/f0c32feb5282123f941ef6f110be88a2.jpg"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
