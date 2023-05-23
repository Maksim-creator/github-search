import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_users/src/features/user/user.controller.dart';
import 'package:github_users/src/features/user/widgets/home_header.dart';
import 'package:github_users/src/features/user/widgets/repos_list.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<UserController>();

    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          !controller.isLoading.value
              ? HomeHeader(
                  name: controller.user.value.name!,
                  avatarUrl: controller.user.value.avatarUrl!,
                  bio: controller.user.value.bio!)
              : const Center(child: CircularProgressIndicator()),
          !controller.isReposLoading.value
              ? ReposList(username: controller.user.value.login!)
              : const Center(
                  child: CircularProgressIndicator(),
                )
        ],
      ),
    ));
  }
}
