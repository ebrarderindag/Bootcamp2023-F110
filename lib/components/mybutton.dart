import 'package:flutter/material.dart';

class Mybuttons extends StatelessWidget {
   const Mybuttons({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 200 ,child: ElevatedButton(onPressed: () {},style:ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ), child: Text(text)));
  }
}