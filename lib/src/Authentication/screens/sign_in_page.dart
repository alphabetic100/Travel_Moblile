import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_mobile/src/Authentication/controller/sign_in_controller.dart';
import 'package:travel_mobile/src/Authentication/screens/forgot_pass_page.dart';
import 'package:travel_mobile/src/Authentication/screens/sign_up_page.dart';
import 'package:travel_mobile/src/Home/home_page.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});
  final PassVisibilityController _passVisibilityController =
      Get.put(PassVisibilityController());
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
                  "Sign in now",
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
                  "Please sign is to continue our app",
                  style: TextStyle(fontFamily: "Outfit", color: Colors.grey),
                ),
                const SizedBox(
                  height: 30,
                ),

                //Email Box
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
                const SizedBox(
                  height: 20,
                ),
                //PassWord Box
                //
                //
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Obx(
                      () => TextField(
                        obscureText:
                            _passVisibilityController.isPassVisibility.value,
                        decoration: InputDecoration(
                          hintText: 'Enter your password',
                          suffixIcon: IconButton(
                            onPressed: () {
                              _passVisibilityController.toggleVisibility();
                            },
                            icon: Icon(
                              _passVisibilityController.isPassVisibility.value
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
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 40,
                  width: Get.width,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Get.to(() => const ForgotPassPage());
                      },
                      child: const Text(
                        "Forget Password?",
                        style: TextStyle(
                          fontFamily: "OutBold",
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //sign in button
                GestureDetector(
                  onTap: () {
                    Get.to(() => HomePage());
                  },
                  child: Container(
                    height: 50,
                    width: 350,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.blue,
                    ),
                    child: const Center(
                      child: Text(
                        "Sign In",
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
                      "Don't have an account?",
                      style: TextStyle(
                        fontFamily: "Outfit",
                        color: Colors.grey,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.to(() => SignUpPage());
                        },
                        child: const Text(
                          "Sign up",
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
                  height: Get.height * 0.15,
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
