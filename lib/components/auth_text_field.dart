import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final bool obscureText;
  const AuthTextField(
      {super.key,
      required this.controller,
      required this.hint,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xFFe7e9f2)),
              borderRadius: BorderRadius.circular(5)),
          focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color.fromARGB(255, 201, 211, 240)),
              borderRadius: BorderRadius.circular(5)),
          filled: true,
          fillColor: const Color(0xFfE7E9F2),
          hintText: hint,
          hintStyle: const TextStyle(color: Color(0xFF333333))),
    );
  }
}
