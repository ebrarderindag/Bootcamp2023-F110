import 'package:f110/components/welcoming_page.dart';
import 'package:f110/components/welcoming_page2.dart';
import 'package:f110/components/welcoming_page3.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class DotIndicatorPage extends StatefulWidget {
  const DotIndicatorPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DotIndicatorPageState createState() => _DotIndicatorPageState();
}

class _DotIndicatorPageState extends State<DotIndicatorPage> {
  double currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index.toDouble();
                });
              },
              children: const [
                Welcoming1(),
                Welcoming2(),
                Welcoming3(),
              ],
            ),
          ),
          const SizedBox(height: 16),
          DotsIndicator(
            dotsCount: 3,
            position: currentIndex,
            decorator: DotsDecorator(
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
