import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_users/src/features/auth/auth.controller.dart';

import 'package:github_users/src/features/auth/screens/initial_screen.dart';
import 'package:github_users/src/features/auth/screens/webview_login.dart';
import 'package:github_users/src/features/user/screens/drag.dart';
import 'package:github_users/src/features/user/screens/home.dart';
import 'package:github_users/src/features/user/user.controller.dart';

void main() async {
  await initializeGetX();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Get.deviceLocale,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const InitialScreen()),
        GetPage(name: '/github_auth', page: () => const WebViewLogin()),
        GetPage(name: '/home', page: () => const Home()),
        GetPage(name: '/home/drag', page: () => const Drag())
      ],
    );
  }
}

Future? initializeGetX() async {
  Get.put(UserController());
  Get.put(AuthController());
}
