import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader(
      {super.key,
      required this.name,
      required this.avatarUrl,
      required this.bio});

  final String name;
  final String avatarUrl;
  final String bio;

  @override
  Widget build(BuildContext context) {
    RxBool isLightTheme = false.obs;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 17),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    bio,
                    style: const TextStyle(fontSize: 13),
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                  child: Container(
                    height: 65,
                    width: 65,
                    color: Colors.white,
                    child: Image.network(
                      avatarUrl,
                      width: 65,
                      height: 65,
                      fit: BoxFit.cover,
                    ),
                  )),
              Row(
                children: [
                  const Text(
                    'Dark theme',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  ObxValue((p0) {
                    return Switch(
                      value: isLightTheme.value,
                      activeColor: Colors.green,
                      onChanged: (bool value) {
                        isLightTheme.value = value;
                        Get.changeTheme(Get.isDarkMode
                            ? ThemeData.light()
                            : ThemeData.dark());
                      },
                    );
                  }, false.obs)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
