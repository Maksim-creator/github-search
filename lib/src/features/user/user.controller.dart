import 'package:get/get.dart';

import '../../api/user.dart' as user_api;

import '../../api/auth.dart';
import '../../utils/helpers.dart';
import 'models/repo/repo.dart';
import 'models/user/user.dart';

class UserController extends GetxController {
  RxBool isLoading = false.obs;
  RxBool isReposLoading = false.obs;
  var user = const User().obs;
  var repositories = <Repo>[].obs;

  Future authorizeUser(String code) async {
    isLoading(true);
    final tokenResponse = await Auth().getAccessToken(code);

    final userResponse =
        await user_api.User().getUser(tokenResponse.data.toString());
    final mappedUser = convertToCamelCase(userResponse.data);
    user.value = User.fromJson(mappedUser);

    Get.toNamed('/home');

    isLoading(false);
    return;
  }

  Future<List<Repo>> getRepositories(String username) async {
    isReposLoading(true);

    final response = await user_api.User().getRepositories(username);

    final mappedReposes =
        response.data!.map((repo) => convertToCamelCase(repo)).toList();

    final List<Repo> res =
        mappedReposes.map((repo) => Repo.fromJson(repo)).toList();
    repositories.value = res;

    isReposLoading(false);
    return res;
  }
}
