import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:github_users/src/api/auth.dart';
import 'package:github_users/src/features/auth/models/user.dart';
import 'package:github_users/src/features/user/user.controller.dart';
import 'package:github_users/src/utils/helpers.dart';
import '../api/user.dart' as user_api;

class AuthRepo {
  final dio = Dio();
  final userController = Get.put(UserController());

  Future authorizeUser(String code) async {
    final tokenResponse = await Auth().getAccessToken(code);

    final userResponse =
        await user_api.User().getUser(tokenResponse.data.toString());
    final mappedUser = convertToCamelCase(userResponse.data);
    final User user = User.fromJson(mappedUser);
    userController.setUserData(user);
    Get.offAllNamed('/home');
    return;
  }
}
