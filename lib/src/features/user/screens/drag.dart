import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Drag extends StatefulWidget {
  const Drag({super.key});

  @override
  State<Drag> createState() => _DragState();
}

class Avatar {
  double top;
  double left;
  Widget avatar;

  Avatar({required this.avatar, required this.left, required this.top});
}

class _DragState extends State<Drag> {
  String avatarUrl = Get.arguments;
  bool isActive = false;

  double top = 0;
  double left = 0;
  List<Avatar> avatars = [];

  void createNewAvatar(Widget avatar) {
    double dx =
        Random().nextDouble() * (MediaQuery.of(context).size.width - 50);
    double dy =
        Random().nextDouble() * (MediaQuery.of(context).size.height - 50);

    avatars.add(Avatar(avatar: avatar, left: dx, top: dy));
  }

  void fallAvatars() {
    setState(() {
      isActive = !isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget ava = ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(100)),
        child: Container(
          height: 70,
          width: 70,
          color: Colors.white,
          child: Image.network(
            avatarUrl,
            width: 70,
            height: 70,
            fit: BoxFit.cover,
          ),
        ));

    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.amber, padding: EdgeInsets.zero),
                onPressed: fallAvatars,
                child: const Text(
                  'Throw',
                  style: TextStyle(color: Colors.black),
                )),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 150,
            child: Stack(children: [
              AnimatedPositioned(
                  duration: const Duration(milliseconds: 50),
                  top: top,
                  left: left,
                  child: GestureDetector(
                    onDoubleTap: () => createNewAvatar(ava),
                    onPanUpdate: (details) {
                      setState(() {
                        top = max(0, top + details.delta.dy);
                        left = max(0, left + details.delta.dx);
                      });
                    },
                    child: ava,
                  )),
              ...avatars.map((avatar) {
                return AnimatedPositioned(
                    duration: isActive
                        ? const Duration(milliseconds: 500)
                        : const Duration(milliseconds: 50),
                    left: avatar.left,
                    top: isActive
                        ? MediaQuery.of(context).size.height - 220
                        : avatar.top,
                    child: GestureDetector(
                      onDoubleTap: () => createNewAvatar(ava),
                      child: avatar.avatar,
                    ));
              })
            ]),
          ),
          Expanded(
            child: Container(
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
