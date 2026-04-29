import 'package:flutter/material.dart';

class CustomProfileTextFeild extends StatelessWidget {
  const CustomProfileTextFeild({
    super.key,
    required this.controller,
    required this.labelText,
  });

  final TextEditingController controller;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: Colors.white,
      cursorHeight: 20,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        label: Text(labelText, style: TextStyle(color: Colors.white)),

        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(15),
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
