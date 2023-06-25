import 'package:flutter/material.dart';

import '../components/welcoming_page.dart';

class InfoPage extends StatelessWidget {
   InfoPage({super.key});
final Controller= PageController(
  initialPage: 1
);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:PageView(
        controller: Controller,
        children: const [
          Welcoming1(),
          Welcoming2(),
          Welcoming3(),
        ],
      )
    );
  }
}