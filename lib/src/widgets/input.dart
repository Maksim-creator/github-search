import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final Function(String)? onChanged;

  const Input({super.key, this.hintText, this.controller, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(fontWeight: FontWeight.bold),
      cursorColor: Colors.green.shade300,
      decoration: InputDecoration(
        hintStyle: const TextStyle(fontWeight: FontWeight.w400),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.green, width: 2),
        ),
        border: const UnderlineInputBorder(),
        hintText: hintText,
      ),
      controller: controller,
      onChanged: onChanged,
    );
  }
}
