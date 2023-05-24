import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/user/user.dart';

class UserCard extends StatelessWidget {
  final User user;

  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero, side: BorderSide.none),
      onPressed: () {
        Get.toNamed('/home/drag', arguments: user.avatarUrl!);
      },
      child: Container(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 4),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 3,
                    spreadRadius: 2,
                    offset: Offset(2, 3))
              ]),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    user.login!,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(100)),
                      child: Container(
                        height: 50,
                        width: 50,
                        color: Colors.white,
                        child: Image.network(
                          user.avatarUrl!,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ))
                ],
              )
            ],
          )),
    );
  }
}
