import 'package:get/get.dart';
import 'package:github_users/src/features/auth/models/user.dart';

class UserController extends GetxController {
  var user = const User().obs;

  void setUserData(User authorizedUser) async {
    user.value = authorizedUser;
  }
}
