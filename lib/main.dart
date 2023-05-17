import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:github_users/src/features/auth/screens/initial_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [GetPage(name: '/', page: () => const InitialScreen())],
    );
  }
}
