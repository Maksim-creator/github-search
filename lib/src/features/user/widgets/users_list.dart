import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_users/src/features/user/user.controller.dart';
import 'package:github_users/src/features/user/widgets/user_card.dart';

import '../models/user/user.dart';

class UsersList extends StatefulWidget {
  const UsersList({super.key});

  @override
  State<UsersList> createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  @override
  Widget build(BuildContext context) {
    final userController = Get.find<UserController>();

    return Flexible(
      flex: 8,
      child: Obx(
        () => userController.users.isEmpty
            ? const Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    'No users found with this name',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              )
            : Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                decoration: BoxDecoration(
                    color: Colors.green.shade400.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade400,
                          spreadRadius: 2,
                          offset: const Offset(2, 2),
                          blurRadius: 2)
                    ]),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: userController.users.length,
                    itemBuilder: (context, index) {
                      final User user = userController.users[index];

                      return UserCard(user: user);
                    }),
              ),
      ),
    );
  }
}
