import 'package:get/get.dart';

class PassVisibilityController extends GetxController {
  RxBool isPassVisibility = true.obs;
  toggleVisibility() {
    isPassVisibility.value = !isPassVisibility.value;
  }
}
