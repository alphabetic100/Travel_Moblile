import 'package:get/get.dart';

class SignUpControlleer extends GetxController {

  RxBool isPassVisibility = true.obs;
  toggleVisibility() {
    isPassVisibility.value = !isPassVisibility.value;
  }
}