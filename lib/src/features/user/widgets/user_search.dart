import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_users/src/features/user/user.controller.dart';
import 'package:github_users/src/features/user/widgets/users_list.dart';
import 'package:github_users/src/widgets/input.dart';
import '../../../utils/helpers.dart' as helpers;

class UserSearch extends StatelessWidget {
  const UserSearch({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    final userController = Get.find<UserController>();

    void handleSearch(String value) {
      helpers.debounce(userController.getUsersByUsername(value, 10, 1),
          Duration(seconds: 2));
    }

    return Flexible(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: Input(
                  hintText: 'Type a username to find users',
                  controller: controller,
                  onChanged: handleSearch),
            ),
            UsersList()
          ],
        ),
      ),
    );
  }
}
