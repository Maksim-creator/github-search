import 'package:flutter/material.dart';
import 'package:github_users/src/features/auth/widgets/initial_widget.dart';
import 'package:github_users/src/features/auth/widgets/login_form.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool isStarted = false;

  void handleAnimationStart() {
    setState(() {
      isStarted = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('lib/assets/images/initialScreenBg.jpg'))),
        child: SafeArea(
          child: Stack(children: [
            InitialWidget(
                isStarted: isStarted, handleStart: handleAnimationStart),
            LoginForm(
              isStarted: isStarted,
            ),
          ]),
        ),
      ),
    );
  }
}
