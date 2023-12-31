import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final String hintText;
  final bool obscureText;
  const MyTextField({super.key, required this.controller,required this.hintText,required this.obscureText,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 26, left: 26, right: 26),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
          decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green.shade900)),
        fillColor: Colors.grey.shade300,
        filled: true,
        hintText: hintText,
        
      )),
    );
  }
}
