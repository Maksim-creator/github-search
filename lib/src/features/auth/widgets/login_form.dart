import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/button.dart';
import '../../../widgets/input.dart';

class LoginForm extends StatelessWidget {
  final bool isStarted;

  const LoginForm({super.key, required this.isStarted});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();

    return AnimatedPositioned(
        left: !isStarted ? MediaQuery.of(context).size.width * 2 : 0,
        right: 0,
        top: 0,
        bottom: 0,
        duration: const Duration(milliseconds: 500),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Input(
                controller: usernameController,
                hintText: 'Username',
              ),
              Column(
                children: [
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: ValueListenableBuilder(
                        valueListenable: usernameController,
                        builder: (context, value, child) {
                          return Button(
                            buttonText: 'Continue as guest',
                            onPress:
                                value.text.isNotEmpty && value.text.length >= 2
                                    ? () {}
                                    : null,
                            textStyle:
                                const TextStyle(fontWeight: FontWeight.bold),
                            buttonStyle: OutlinedButton.styleFrom(
                                elevation: 20,
                                shadowColor: Colors.green,
                                side: BorderSide.none,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 30)),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: Button(
                      buttonText: 'Login via GitHub',
                      onPress: () => Get.toNamed('/github_auth'),
                      textStyle: const TextStyle(fontWeight: FontWeight.bold),
                      buttonStyle: OutlinedButton.styleFrom(
                          elevation: 20,
                          shadowColor: Colors.green,
                          side: BorderSide.none,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 30)),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
