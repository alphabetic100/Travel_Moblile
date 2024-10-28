import 'package:get/get.dart';

class IntroPageController extends GetxController {
  RxString buttonName = "Get Started".obs;
  RxInt pageNumber = 1.obs;

  buttonText(int pagenumber) {
    if (pagenumber == 0) {
      buttonName.value = "Get Started";
    } else if (pagenumber == 1) {
      buttonName.value = "Next";
    } else {
      buttonName.value = "Next";
    }

  }
}
