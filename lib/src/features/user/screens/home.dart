import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_users/src/features/auth/auth.controller.dart';
import 'package:github_users/src/features/user/user.controller.dart';
import 'package:github_users/src/features/user/widgets/home_header.dart';
import 'package:github_users/src/features/user/widgets/repos_list.dart';
import 'package:github_users/src/features/user/widgets/user_search.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final userController = Get.find<UserController>();
    final authController = Get.find<AuthController>();

    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          !userController.isLoading.value
              ? HomeHeader(
                  name: userController.user.value.name!,
                  avatarUrl: authController.isGuest.value
                      ? 'https://media.istockphoto.com/id/1337144146/vector/default-avatar-profile-icon-vector.jpg?s=612x612&w=0&k=20&c=BIbFwuv7FxTWvh5S3vB6bkT0Qv8Vn8N5Ffseq84ClGI='
                      : userController.user.value.avatarUrl!,
                  bio: authController.isGuest.value
                      ? ''
                      : userController.user.value.bio!)
              : const Center(child: CircularProgressIndicator()),
          authController.isGuest.value
              ? UserSearch()
              : !userController.isReposLoading.value
                  ? ReposList(username: userController.user.value.login!)
                  : const Center(
                      child: CircularProgressIndicator(),
                    )
        ],
      ),
    ));
  }
}
