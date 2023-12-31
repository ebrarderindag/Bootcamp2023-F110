import 'package:f110/_LAST_NEW_DESIGN/lastappmain.dart';

import 'package:flutter/material.dart';

class Mybuttons extends StatelessWidget {
  const Mybuttons({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 200,
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return LastNewAppMain();
                },
              ));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shape: const StadiumBorder(),
              elevation: 6,
            ),
            child: Text(text)));
  }
}
