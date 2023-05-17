import 'package:flutter/material.dart';

import '../../../widgets/button.dart';

class InitialWidget extends StatefulWidget {
  final bool isStarted;
  final void Function() handleStart;

  const InitialWidget(
      {super.key, required this.handleStart, required this.isStarted});

  @override
  State<InitialWidget> createState() => _InitialWidgetState();
}

class _InitialWidgetState extends State<InitialWidget> {
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
        left: widget.isStarted ? -MediaQuery.of(context).size.width * 2 : 0,
        right: 0,
        top: 0,
        bottom: 0,
        duration: const Duration(milliseconds: 400),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Welcome to GitHub users search!',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.green.shade300),
            ),
            Button(
              buttonText: 'Get started',
              onPress: widget.handleStart,
              textStyle: const TextStyle(fontWeight: FontWeight.bold),
              buttonStyle: OutlinedButton.styleFrom(
                  elevation: 20,
                  shadowColor: Colors.green,
                  side: BorderSide.none,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 30)),
            )
          ],
        ));
  }
}
