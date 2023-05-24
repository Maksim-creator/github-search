import 'package:get/get.dart';

class AuthController extends GetxController {
  RxBool isGuest = false.obs;

  void setIsGuest() {
    isGuest.value = true;
  }
}
