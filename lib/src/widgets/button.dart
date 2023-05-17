import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final void Function()? onPress;
  final ButtonStyle? buttonStyle;
  final TextStyle? textStyle;

  const Button(
      {super.key,
      required this.buttonText,
      required this.onPress,
      this.buttonStyle,
      this.textStyle});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onPress,
        style: OutlinedButton.styleFrom(
                backgroundColor:
                    onPress != null ? Colors.green.shade300 : Colors.grey)
            .merge(buttonStyle),
        child: Text(
          buttonText,
          style: const TextStyle(color: Colors.white).merge(textStyle),
        ));
  }
}
