import 'package:get/get.dart';

import '../../api/user.dart' as user_api;

import '../../api/auth.dart';
import '../../utils/helpers.dart';
import 'models/repo/repo.dart';
import 'models/user/user.dart';

class UserController extends GetxController {
  RxBool isLoading = false.obs;
  RxBool isReposLoading = false.obs;
  RxBool isUsersLoading = false.obs;
  RxString usersError = ''.obs;
  var user = const User().obs;
  var repositories = <Repo>[].obs;
  var users = <User>[].obs;

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

  void authorizeAnonymousUser(String username) {
    isLoading(true);
    user.value = User(name: username);
    Get.toNamed('/home');
    isLoading(false);
  }

  Future getUsersByUsername(String username, int rowsPerPage, int page) async {
    isUsersLoading(true);

    if (username.isEmpty) {
      users.assignAll([]);
    } else {
      final response =
          await user_api.User().getUsersByUsername(username, rowsPerPage, page);

      if (response.statusCode == 403) {
        usersError = response.data!['message'];
      } else {
        final List<dynamic> mappedResponse = response.data!['items']
            .map((user) => convertToCamelCase(user))
            .toList();

        final List<User> usersg =
            mappedResponse.map((user) => User.fromJson(user)).toList();

        users.assignAll(usersg);
      }
    }
  }
}
